--========================================================--
--             Scorpio Secure Action ItemHandler          --
--                                                        --
-- Author      :  kurapica125@outlook.com                 --
-- Create Date :  2020/11/25                              --
--========================================================--

--========================================================--
Scorpio        "Scorpio.Secure.ItemHandler"          "1.0.0"
--========================================================--

import(SecureActionButton)

_ToyFilter                      = {}
_ToyFilterTemplate              = "_ToyFilter[%d] = true"

------------------------------------------------------
-- Action Handler
------------------------------------------------------
handler                         = ActionTypeHandler {
    Name                        = "item",

    InitSnippet                 = [[
        _ToyFilter              = newtable()
    ]],

    UpdateSnippet               = [[
        local target            = ...

        if tonumber(target) then
            if _ToyFilter[target] then
                self:SetAttribute("*item*", nil)
                self:SetAttribute("*type*", "toy")
                self:SetAttribute("*toy*", target)
            else
                self:SetAttribute("*type*", nil)
                self:SetAttribute("*toy*", nil)
                self:SetAttribute("*item*", "item:"..target)
            end
        end
    ]],

    ClearSnippet                = [[
        self:SetAttribute("*item*", nil)
        self:SetAttribute("*type*", nil)
        self:SetAttribute("*toy*", nil)
    ]],
}


------------------------------------------------------
-- Module Event Handler
------------------------------------------------------
function OnEnable(self)
    OnEnable                    = nil

    -- Need save the toy data to avoid the in-game scan
    _SVData.ToyItems            = _SVData.ToyItems or {}
    ToyData                     = _SVData.ToyItems

    -- Load toy informations
    C_ToyBox.ForceToyRefilter()

    return handler:RefreshAll()
end

------------------------------------------------------
-- System Event Handler
------------------------------------------------------
__SystemEvent__()
function PLAYER_ENTERING_WORLD(isInitialLogin)
    if isInitialLogin and not next(_ToyFilter) then
        return UpdateToys()
    end
end

__SystemEvent__()
function SPELLS_CHANGED()
    for _, btn in handler:GetIterator() do
        if _ToyFilter[btn.ActionTarget] then
            handler:RefreshAll(btn)
        end
    end
end

__SystemEvent__()
function UPDATE_SHAPESHIFT_FORM()
    for _, btn in handler:GetIterator() do
        if _ToyFilter[btn.ActionTarget] then
            handler:RefreshAll(btn)
        end
    end
end

__SystemEvent__()
function TOYS_UPDATED(itemID, new)
    return UpdateToys()
end

__SystemEvent__()
function SPELL_UPDATE_COOLDOWN()
    for _, btn in handler:GetIterator() do
        if _ToyFilter[btn.ActionTarget] then
            handler:RefreshCooldown(btn)
        end
    end
end

__SystemEvent__()
function BAG_UPDATE_DELAYED()
    handler:RefreshCount()
    handler:RefreshUsable()
end

__SystemEvent__()
function BAG_UPDATE_COOLDOWN()
    handler:RefreshCooldown()
end

__SystemEvent__()
function PLAYER_EQUIPMENT_CHANGED()
    return handler:RefreshAll()
end

__SystemEvent__()
function PLAYER_REGEN_ENABLED()
    handler:RefreshCount()
    handler:RefreshUsable()
end

__SystemEvent__()
function PLAYER_REGEN_DISABLED()
    handler:RefreshUsable()
end

__Async__()
function UpdateToys()
    local cache                 = {}

    if not next(_ToyFilter) then
        for _, item in ipairs(ToyData) do
            if not _ToyFilter[item] then
                _ToyFilter[item] = true
                tinsert(cache, _ToyFilterTemplate:format(item))
            end
        end
    end

    for i = 1, C_ToyBox.GetNumToys() do
        if i % 20 == 0 then Continue() end

        local index             = C_ToyBox.GetToyFromIndex(i)

        if index > 0 then
            local item          = C_ToyBox.GetToyInfo(index)
            if item and item > 0 and not _ToyFilter[item] then
                tinsert(ToyData, item)
                _ToyFilter[item]= true
                tinsert(cache, _ToyFilterTemplate:format(item))
            end
        end
    end

    if next(cache) then
        NoCombat(function ()
            handler:RunSnippet( tblconcat(cache, ";") )

            for _, btn in handler:GetIterator() do
                local target    = btn.ActionTarget
                if _ToyFilter[target] then
                    btn:SetAttribute("*item*", nil)
                    btn:SetAttribute("*type*", "toy")
                    btn:SetAttribute("*toy*", target)

                    handler:RefreshAll(btn)
                end
            end
        end)
    end
end

------------------------------------------------------
-- Overwrite methods
------------------------------------------------------
function handler:PickupAction(target)
    if _ToyFilter[target] then
        return  C_ToyBox.PickupToyBoxItem(target)
    else
        return PickupItem(target)
    end
end

function handler:GetActionTexture()
    local target                = self.ActionTarget
    if _ToyFilter[target] then
        return (select(3, C_ToyBox.GetToyInfo(target)))
    else
        return GetItemIcon(target)
    end
end

function handler:GetActionCount()
    local target                = self.ActionTarget
    return _ToyFilter[target] and 0 or GetItemCount(target)
end

function handler:GetActionCooldown()
    return GetItemCooldown(self.ActionTarget)
end

function handler:IsEquippedItem()
    local target = self.ActionTarget
    return not _ToyFilter[target] and IsEquippedItem(target)
end

function handler:IsActivedAction()
    -- Block now, no event to deactivate
    return false and IsCurrentItem(self.ActionTarget)
end

function handler:IsUsableAction()
    local target                = self.ActionTarget
    return _ToyFilter[target] or IsUsableItem(target)
end

function handler:IsConsumableAction()
    local target                = self.ActionTarget
    if _ToyFilter[target] then return false end
    -- return IsConsumableItem(target) blz sucks, wait until IsConsumableItem is fixed
    local maxStack              = select(8, GetItemInfo(target))

    if IsUsableItem(target) and maxStack and maxStack > 1 then
        return true
    else
        return false
    end
end

function handler:IsInRange()
    return IsItemInRange(self.ActionTarget, self:GetAttribute("unit"))
end

function handler:SetTooltip(GameTooltip)
    local target                = self.ActionTarget
    if _ToyFilter[target] then
        GameTooltip:SetToyByItemID(target)
    else
        GameTooltip:SetHyperlink(select(2, GetItemInfo(self.ActionTarget)))
    end
end

function handler:IsRangeSpell()
    return true
end

function handler:Map(target, detail)
    if tonumber(target) then
        -- pass
    elseif target and select(2, GetItemInfo(target)) then
        target                  = select(2, GetItemInfo(target)):match("item:(%d+)")
    end
    target                      = tonumber(target)

    return target, detail
end

------------------------------------------------------
-- Extend Definitions
------------------------------------------------------
class "SecureActionButton" (function(_ENV)
    ------------------------------------------------------
    -- Property
    ------------------------------------------------------
    --- The action button's content if its type is 'item'
    property "Item" {
        type                    = String + Number,
        set                     = function(self, value) self:SetAction("item", value and GetItemInfo(value) and select(2, GetItemInfo(value)):match("item:%d+") or nil) end,
        get                     = function(self) return self:GetAttribute("actiontype") == "item" and self:GetAttribute("item") or nil end,
    }
end)
