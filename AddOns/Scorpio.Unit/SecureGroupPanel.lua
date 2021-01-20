--========================================================--
--             Scorpio Secure Group Panel                 --
--                                                        --
-- Author      :  kurapica125@outlook.com                 --
-- Create Date :  2020/11/14                              --
--========================================================--

--========================================================--
Scorpio           "Scorpio.Secure.SecureGroupPanel"  "1.0.0"
--========================================================--

-----------------------------------------------------------
--              Secure Element Panel Widget              --
-----------------------------------------------------------
__Sealed__()
class "SecureGroupPanel" (function(_ENV)
    inherit "SecurePanel"

    __Sealed__() enum "GroupType"       { "NONE", "GROUP", "CLASS", "ROLE", "ASSIGNEDROLE" }

    __Sealed__() enum "SortType"        { "INDEX", "NAME" }

    __Sealed__() enum "RoleType"        { "MAINTANK", "MAINASSIST", "TANK", "HEALER", "DAMAGER", "NONE" }

    __Sealed__() enum "PlayerClass"     { "WARRIOR", "DEATHKNIGHT", "PALADIN", "MONK", "PRIEST", "SHAMAN", "DRUID", "ROGUE", "MAGE", "WARLOCK", "HUNTER", "DEMONHUNTER" }

    __Sealed__() struct "GroupFilter"   { System.Number }

    __Sealed__() struct "ClassFilter"   { PlayerClass }

    __Sealed__() struct "RoleFilter"    { RoleType }

    DEFAULT_CLASS_SORT_ORDER    = { "WARRIOR", "DEATHKNIGHT", "PALADIN", "MONK", "PRIEST", "SHAMAN", "DRUID", "ROGUE", "MAGE", "WARLOCK", "HUNTER", "DEMONHUNTER" }
    DEFAULT_ROLE_SORT_ORDER     = { "MAINTANK", "MAINASSIST", "TANK", "HEALER", "DAMAGER", "NONE"}
    DEFAULT_GROUP_SORT_ORDER    = { 1, 2, 3, 4, 5, 6, 7, 8 }

    -- A shadow refresh system based on the SecureGroupHeaderTemplate
    __SecureTemplate__()
    __Sealed__() class "ShadowGroupHeader" (function(_ENV)
        inherit "SecureFrame"

        _InitHeader             = [=[
            Manager             = self

            UnitFrames          = newtable()
            ShadowFrames        = newtable()
            DeadFrames          = newtable()

            Manager:SetAttribute("useAttributeChildCnt", 0)

            refreshDeadPlayer   = [[
                for i = 1, #DeadFrames do
                    local unitFrame = UnitFrames[i]

                    if unitFrame then
                        unitFrame:SetAttribute("unit", DeadFrames[i]:GetAttribute("unit"))
                    else
                        break
                    end
                end

                for i = #DeadFrames + 1, #UnitFrames do
                    local unitFrame = UnitFrames[i]

                    if unitFrame:GetAttribute("unit") then
                        unitFrame:SetAttribute("unit", nil)
                    else
                        break
                    end
                end
            ]]

            Manager:SetAttribute("newDeadPlayer", [[
                local id        = ...

                if id then
                    -- Follow the order
                    for i = 1, #DeadFrames + 1 do
                        if DeadFrames[i] then
                            local oid = DeadFrames[i]:GetID()

                            if oid > id then
                                tinsert(DeadFrames, i, ShadowFrames[id])
                                break
                            elseif oid == id then
                                break
                            end
                        else
                            tinsert(DeadFrames, i, ShadowFrames[id])
                        end
                    end

                    return self:Run(refreshDeadPlayer)
                end
            ]])

            Manager:SetAttribute("removeDeadPlayer", [[
                local id        = ...

                if id then
                    local sfrm  = ShadowFrames[id]

                    for i = 1, #DeadFrames do
                        if DeadFrames[i] == sfrm then
                            tremove(DeadFrames, i)
                            return self:Run(refreshDeadPlayer)
                        end
                    end
                end
            ]])

            Manager:SetAttribute("updateStateForChild", [[
                local id        = ...

                if id then
                    local shadow= ShadowFrames[id]
                    local unit  = shadow:GetAttribute("unit")

                    UnregisterAttributeDriver(shadow, "isdead")
                    shadow:SetAttribute("isdead", nil)

                    if unit then
                        RegisterAttributeDriver(shadow, "isdead", format("[@%s,dead]true;false;", unit))
                    end
                end
            ]])

            Manager:SetAttribute("refreshRestUnitFrame", [[
                if Manager:GetAttribute("useAttributeChildCnt") >= #ShadowFrames then return end

                local id        = ...
                if id then
                    -- To safely clear unit frame generated in combat
                    for i = id + 1, #UnitFrames do
                        if UnitFrames[i]:GetAttribute("unit") then
                            UnitFrames[i]:SetAttribute("unit", nil)
                        end
                    end
                end
            ]])

            refreshUnitChange   = [[
                local unit      = self:GetAttribute("unit")
                local frame     = self:GetAttribute("UnitFrame")

                if frame then
                    frame:SetAttribute("unit", unit)
                    self:GetAttribute("Manager"):RunAttribute("refreshRestUnitFrame", self:GetID())
                elseif self:GetAttribute("Manager"):GetAttribute("showDeadOnly") then
                    self:GetAttribute("Manager"):RunAttribute("removeDeadPlayer", self:GetID())
                    self:GetAttribute("Manager"):RunAttribute("updateStateForChild", self:GetID())
                end
            ]]
        ]=]

        _Onattributechanged     = [[
            if name == "unit" then
                if type(value) == "string" then
                    value = strlower(value)
                else
                    value = nil
                end

                local frame = self:GetAttribute("UnitFrame")

                if frame then
                    frame:SetAttribute("unit", value)
                    self:GetAttribute("Manager"):RunAttribute("refreshRestUnitFrame", self:GetID())
                elseif self:GetAttribute("Manager"):GetAttribute("showDeadOnly") then
                    self:GetAttribute("Manager"):RunAttribute("removeDeadPlayer", self:GetID())
                    self:GetAttribute("Manager"):RunAttribute("updateStateForChild", self:GetID())
                end
            elseif name == "isdead" then
                if value == "true" then
                    self:GetAttribute("Manager"):RunAttribute("newDeadPlayer", self:GetID())
                else
                    self:GetAttribute("Manager"):RunAttribute("removeDeadPlayer", self:GetID())
                end
            end
        ]]

        _InitialConfigFunction  = [=[
            tinsert(ShadowFrames, self)

            self:SetWidth(0)
            self:SetHeight(0)
            self:SetID(#ShadowFrames)
            self:SetAttribute("Manager", Manager)

            -- Binding
            local frame         = UnitFrames[#ShadowFrames]

            if frame and not Manager:GetAttribute("showDeadOnly") then
                self:SetAttribute("UnitFrame", frame)
            end

            -- Only for the entering game combat
            -- refreshUnitChange won't fire when the unit is set to nil
            self:SetAttribute("refreshUnitChange", refreshUnitChange)

            Manager:CallMethod("UpdateUnitCount", #ShadowFrames)
        ]=]

        _RegisterUnitFrame      = [=[
            local frame         = Manager:GetFrameRef("UnitFrame")

            if frame then
                tinsert(UnitFrames, frame)

                -- Binding
                if not Manager:GetAttribute("showDeadOnly") then
                    local shadow = ShadowFrames[#UnitFrames]

                    if shadow then
                        shadow:SetAttribute("UnitFrame", frame)
                        frame:SetAttribute("unit", shadow:GetAttribute("unit"))
                    end
                else
                    if #DeadFrames >= #UnitFrames then
                        frame:SetAttribute("unit", DeadFrames[#UnitFrames]:GetAttribute("unit"))
                    end
                end
            end
        ]=]

        _Hide                   = [[
            for i = #ShadowFrames, 1, -1 do
                ShadowFrames[i]:SetAttribute("unit", nil)
            end
            -- Make sure hide all unit frames
            for i = #UnitFrames, 1, -1 do
                UnitFrames[i]:SetAttribute("unit", nil)
            end
        ]]

        _ToggleShowOnlyPlayer   = [[
            if self:GetAttribute("showDeadOnly") then
                for i = 1, #ShadowFrames do
                    ShadowFrames[i]:SetAttribute("UnitFrame", nil)
                end
                for i = 1, #UnitFrames do
                    UnitFrames[i]:SetAttribute("unit", nil)
                end
                for i = 1, #ShadowFrames do
                    self:RunAttribute("updateStateForChild", i)
                end
            else
                wipe(DeadFrames)

                for i = 1, #ShadowFrames do
                    local shadow = ShadowFrames[i]
                    local frame = UnitFrames[i]

                    UnregisterAttributeDriver(shadow, "isdead")

                    if frame then
                        ShadowFrames[i]:SetAttribute("UnitFrame", frame)
                        frame:SetAttribute("unit", ShadowFrames[i]:GetAttribute("unit"))
                    end
                end
                for i = #ShadowFrames + 1, #UnitFrames do
                    UnitFrames[i]:SetAttribute("unit", nil)
                end
            end
        ]]

        ------------------------------------------------------
        -- Method
        ------------------------------------------------------
        __SecureMethod__() __AsyncSingle__(true)
        function UpdateUnitCount(self, count)
            Next() NoCombat()

            for i = self.__InitedCount + 1, count do
                -- Init the child
                local child     = self:GetAttribute("child" .. i)

                child:SetAttribute("refreshUnitChange", nil)    -- only used for the entering game combat
                child:SetAttribute("isdead", nil)
                child:SetAttribute("_onattributechanged", _Onattributechanged)

                self:SetAttribute("useAttributeChildCnt", count)
            end
            self.__InitedCount  = count

            -- Init the panel
            local panel         = self:GetParent()

            if panel and count and panel.Count < count then
                panel.Count     = count
            end
        end

        -- The default refresh method
        function Refresh(self)
            if self:IsShown() and not InCombatLockdown() then
                -- Well, it's ugly but useful to trigger refreshing
                self:Hide()
                self:Show()
            end
        end

        -- Register an unit frame
        function RegisterUnitFrame(self, frame)
            self:SetFrameRef("UnitFrame", frame)
            self:Execute(_RegisterUnitFrame)
        end

        -- Activate the unit panel
        function Activate(self)
            return not self:IsShown() and NoCombat(self.Show, self)
        end

        -- Deactivate the unit panel
        function Deactivate(self)
            return self:IsShown() and NoCombat(self.Hide, self)
        end

        -- Set whether only show dead players
        __NoCombat__()
        function SetShowDeadOnly(self, flag)
            flag                = flag and true or false

            if flag ~= self:IsShowDeadOnly() then
                self:SetAttribute("showDeadOnly", flag)
                self:Execute(_ToggleShowOnlyPlayer)
            end
        end

        -- Whether only show the dead players
        function IsShowDeadOnly(self)
            return self:GetAttribute("showDeadOnly") and true or false
        end

        ------------------------------------------------------
        -- Property
        ------------------------------------------------------
        -- Whether the unit panel is activated
        property "Activated" {
            get                 = function(self) return self:IsShown() end,
            set                 = function(self, value) if value then self:Activate() else self:Deactivate() end end,
            type                = Boolean,
        }

        -- Whether only show the dead players
        property "ShowDeadOnly" {
            get                 = IsShowDeadOnly,
            set                 = SetShowDeadOnly,
            type                = Boolean,
        }

        ------------------------------------------------------
        -- Constructor
        ------------------------------------------------------
        function __ctor(self, ...)
            self.__InitedCount  = 0
            self:Hide()

            self:Execute(_InitHeader)

            self:SetAttribute("template", "SecureHandlerAttributeTemplate")
            self:SetAttribute("initialConfigFunction", _InitialConfigFunction)
            self:SetAttribute("strictFiltering", true)
            self:SetAttribute("groupingOrder", "")

            self:WrapScript(self, "OnHide", _Hide)

            -- Throw out of the screen
            self:SetPoint("TOPRIGHT", UIParent, "TOPLEFT")
            self:SetAlpha(0)
        end
    end)

    ------------------------------------------------------
    -- Helper functions
    ------------------------------------------------------
    local _Cache                = {}

    local function secureSetAttribute(self, attr, value)
        return NoCombat(self.SetAttribute, self, attr, value)
    end

    local function setupGroupFilter(self)
        local groupFilter       = self.GroupFilter or DEFAULT_GROUP_SORT_ORDER
        local classFilter       = self.ClassFilter or DEFAULT_CLASS_SORT_ORDER

        wipe(_Cache)

        for _, v in ipairs(groupFilter) do tinsert(_Cache, v) end
        for _, v in ipairs(classFilter) do tinsert(_Cache, v) end

        secureSetAttribute(self.GroupHeader, "groupFilter", tblconcat(_Cache, ","))

        wipe(_Cache)
    end

    local function setupRoleFilter(self)
        local roleFilter        = self.RoleFilter or DEFAULT_ROLE_SORT_ORDER

        wipe(_Cache)

        for _, v in ipairs(roleFilter) do tinsert(_Cache, v) end

        secureSetAttribute(self.GroupHeader, "roleFilter", tblconcat(_Cache, ","))

        wipe(_Cache)
    end

    local function setupGroupingOrder(self)
        local groupBy           = self.GroupBy
        local filter

        if groupBy == "GROUP" then
            filter              = self.GroupFilter or DEFAULT_GROUP_SORT_ORDER
        elseif groupBy == "CLASS" then
            filter              = self.ClassFilter or DEFAULT_CLASS_SORT_ORDER
        elseif groupBy == "ROLE" or groupBy == "ASSIGNEDROLE" then
            filter              = self.RoleFilter or DEFAULT_ROLE_SORT_ORDER
        end

        wipe(_Cache)

        if filter then for _, v in ipairs(filter) do tinsert(_Cache, v) end end

        secureSetAttribute(self.GroupHeader, "groupingOrder", tblconcat(_Cache, ","))

        wipe(_Cache)
    end

    ------------------------------------------------------
    -- Method
    ------------------------------------------------------
    -- The default refresh method
    function Refresh(self)
        if InCombatLockdown() then return end

        self.GroupHeader:Refresh()

        return self:RefreshLayout()
    end

    -- Init the unit panel with a unit count
    __NoCombat__()
    function InitWithCount(self, count)
        self.Count = count
    end

    -- Activate the unit panel
    function Activate(self)
        self.GroupHeader:Activate()
    end

    -- Deactivate the unit panel
    function Deactivate(self)
        self.GroupHeader:Deactivate()
    end

    ------------------------------------------------------
    -- Property
    ------------------------------------------------------
    -- Whether the unit panel is activated
    property "Activated"        {
        get                     = function(self) return self.GroupHeader.Activated end,
        set                     = function(self, value) self.GroupHeader.Activated = value end,
        type                    = Boolean,
    }

    -- Whether the panel should be shown while in a raid
    property "ShowRaid"         {
        get                     = function(self) return self.GroupHeader:GetAttribute("showRaid") end,
        set                     = function(self, value) secureSetAttribute(self.GroupHeader, "showRaid", value) end,
        type                    = Boolean,
    }

    -- Whether the panel should be shown while in a party and not in a raid
    property "ShowParty"        {
        get                     = function(self) return self.GroupHeader:GetAttribute("showParty") end,
        set                     = function(self, value) secureSetAttribute(self.GroupHeader, "showParty", value) end,
        type                    = Boolean,
    }

    -- Whether the panel should show the player while not in a raid
    property "ShowPlayer"       {
        get                     = function(self) return self.GroupHeader:GetAttribute("showPlayer") end,
        set                     = function(self, value) secureSetAttribute(self.GroupHeader, "showPlayer", value) end,
        type                    = Boolean,
    }

    -- Whether the panel should be shown while not in a group
    property "ShowSolo"         {
        get                     = function(self) return self.GroupHeader:GetAttribute("showSolo") end,
        set                     = function(self, value) secureSetAttribute(self.GroupHeader, "showSolo", value) end,
        type                    = Boolean,
    }

    -- A list of raid group numbers, used as the filter settings and order settings(if GroupBy is "GROUP")
    __Set__(PropertySet.Clone)
    property "GroupFilter"      {
        handler                 = function (self, value)
            if value and not next(value) then self.GroupFilter = nil return end
            setupGroupFilter(self)
            if self.GroupBy == "GROUP" then setupGroupingOrder(self) end
        end,
        type                    = GroupFilter,
    }

    -- A list of uppercase class names, used as the filter settings and order settings(if GroupBy is "CLASS")
    __Set__(PropertySet.Clone)
    property "ClassFilter"      {
        handler                 = function (self, value)
            if value and not next(value) then self.ClassFilter = nil return end
            setupGroupFilter(self)
            if self.GroupBy == "CLASS" then setupGroupingOrder(self) end
        end,
        type                    = ClassFilter,
    }

    -- A list of uppercase role names, used as the filter settings and order settings(if GroupBy is "ROLE")
    __Set__(PropertySet.Clone)
    property "RoleFilter"       {
        handler                 = function (self, value)
            if value and not next(value) then self.RoleFilter = nil return end
            setupRoleFilter(self)
            if self.GroupBy == "ROLE" or self.GroupBy == "ASSIGNEDROLE" then
                setupGroupingOrder(self)
            end
        end,
        type                    = RoleFilter,
    }

    -- Specifies a "grouping" type to apply before regular sorting (Default: nil)
    property "GroupBy"          {
        handler                 = function (self, value)
            if value == "NONE" then value = nil end
            secureSetAttribute(self.GroupHeader, "groupBy", value)
            setupGroupingOrder(self)
        end,
        type                    = GroupType,
        default                 = "NONE",
    }

    -- Defines how the group is sorted (Default: "INDEX")
    property "SortBy"           {
        get                     = function(self) return self.GroupHeader:GetAttribute("sortMethod") end,
        set                     = function(self, value) secureSetAttribute(self.GroupHeader, "sortMethod", value) end,
        type                    = SortType,
        default                 = "INDEX",
    }

    -- The group header based on the blizzard's SecureGroupHeader
    property "GroupHeader"      {
        default                 = function(self)
            return ShadowGroupHeader("ShadowGroupHeader", self, "SecureGroupHeaderTemplate")
        end,
        type                    = ShadowGroupHeader
    }

    -- Whether only show the dead players
    property "ShowDeadOnly"     {
        get                     = function(self) return self.GroupHeader.ShowDeadOnly end,
        set                     = function(self, value) self.GroupHeader.ShowDeadOnly = value end,
        type                    = Boolean,
    }

    ------------------------------------------------------
    -- Event Handler
    ------------------------------------------------------
    local function OnElementAdd(self, element)
        element.UnitWatchEnabled = false
        element:SetAttribute("unit", nil)

        self.GroupHeader:RegisterUnitFrame(element)
    end

    ------------------------------------------------------
    -- Constructor
    ------------------------------------------------------
    function __ctor(self, ...)
        super(self, ...)

        self.OnElementAdd       = self.OnElementAdd + OnElementAdd
        setupGroupFilter(self)
    end
end)

__Sealed__()
class "SecureGroupPetPanel" (function(_ENV)
    inherit "SecureGroupPanel"

    ------------------------------------------------------
    -- Property
    ------------------------------------------------------

    -- if true, then pet names are used when sorting the list
    property "FilterOnPet"      {
        get                     = function(self) return self.GroupHeader:GetAttribute("filterOnPet") or false end,
        set                     = function(self, value) NoCombat(self.GroupHeader.SetAttribute, self.GroupHeader, "filterOnPet", value) end,
        type                    = Boolean,
    }

    property "GroupHeader"      {
        default                 = function(self)
            return SecureGroupPanel.ShadowGroupHeader("ShadowGroupHeader", self, "SecureGroupPetHeaderTemplate")
        end,
    }
end)

-----------------------------------------------------------
--                     Default Style                     --
-----------------------------------------------------------
Style.UpdateSkin("Default",     {
    [SecureGroupPanel]          = {
        elementType             = UnitFrame,
        rowCount                = _G.MEMBERS_PER_RAID_GROUP or 5,
        columnCount             = _G.NUM_RAID_GROUPS or 8,

        elementWidth            = 80,
        elementHeight           = 32,
        orientation             = "VERTICAL",
        leftToRight             = true,
        topToBottom             = true,
        hSpacing                = 2,
        vSpacing                = 2,

        marginTop               = 0,
        marginBottom            = 0,
        marginLeft              = 0,
        marginRight             = 0,

        showRaid                = true,
        showParty               = true,
        showSolo                = true,
        showPlayer              = true,
    },
    [SecureGroupPetPanel]       = {
        showRaid                = false,
        showParty               = true,
        showSolo                = true,
        showPlayer              = true,
    },
})
