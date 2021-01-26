Scorpio "GuildBankSort" ""

GUILDBANK_TAB_ITEM_SIZE = 98

__Async__()
function OnEnable(self)
    if not IsAddOnLoaded("Blizzard_GuildBankUI") then
        while NextEvent("ADDON_LOADED") ~= "Blizzard_GuildBankUI" do end
    end
    CreateSortButton()
end

-- 创建整理按钮
function CreateSortButton()
    SortButton = Button("SortButton", GuildBankFrame)
    SortButton:SetSize(18, 18)
    SortButton:SetPoint("RIGHT", GuildItemSearchBox, "LEFT", -8, 0)
    SortButton:SetNormalAtlas("bags-button-autosort-up")
    SortButton:SetPushedAtlas("bags-button-autosort-down")
    SortButton:SetHighlightTexture([[Interface\Buttons\ButtonHilight-Square]],"ADD")
    SortButton.OnClick = OnSortButtonClick
    GUILDBANKFRAME_OPENED()
end

__SystemEvent__()
function GUILDBANKFRAME_OPENED()
    if not SortButton then return end
    HideLoading()
    ViewedTab = {}
    local currentTab = GetCurrentGuildBankTab()
    -- 记录刷新标签的时间（用来判断该标签数据是否过时）
    -- todo item transfer
    ViewedTab[GetCurrentGuildBankTab()] = GetTime()
    if not CanSortTab(currentTab) then
        SortButton:Hide()
    else
        SortButton:Show()
    end
end

__AddonSecureHook__ "Blizzard_GuildBankUI"
function GuildBankTab_OnClick(self, mouseButton, currentTab)
    UpdateSortButtonStatus(currentTab)
    ViewedTab[currentTab] = GetTime()
end

function UpdateSortButtonStatus(tab)
    if not SortButton then return end
    if CanSortTab(tab) then
        SortButton:Show()
    else
        SortButton:Hide()
    end
end

-- 是否可整理该标签
function CanSortTab(tab)
    if IsGuildLeader() then return true end
    local _, _, _, _, _, remainingWithdrawals = GetGuildBankTabInfo(tab)
    return remainingWithdrawals ~= 0
end

-- 整理按钮点击事件
function OnSortButtonClick(self, button)
    PlaySound(SOUNDKIT.UI_BAG_SORTING_01)
    FireSystemEvent("SPAUI_GUILDBANK_SORT")
end

-- 显示进度条
__Arguments__{NEString/nil}
function ShowLoading(progressText)
    if not MaskLayer then
        MaskLayer = Frame("MaskerLayer", GuildBankFrame)
        MaskLayer:SetPoint("TOPLEFT",GuildBankFrame.LeftBorder, "TOPLEFT", 0, 8)
        MaskLayer:SetPoint("BOTTOM", 0, -32)
        MaskLayer:SetPoint("RIGHT", 45, 0)
        MaskLayer:SetFrameStrata("HIGH")
        MaskLayer:EnableMouse(true)
        local BankFrameMask = Texture("GuildBankFrameMask", MaskLayer)
        BankFrameMask:SetPoint("TOPLEFT")
        BankFrameMask:SetPoint("BOTTOMRIGHT", GuildBankFrame, "BOTTOMRIGHT")
        BankFrameMask:SetColorTexture(0, 0, 0, 0.3)
        local ProgressText = FontString("ProgressText", MaskLayer)
        ProgressText:SetPoint("LEFT", GuildBankFrameTab4, "RIGHT", 16)
        ProgressText:SetText(progressText)
    else
        MaskLayer:GetChild("ProgressText"):SetText(progressText)
        MaskLayer:Show()
    end
end

-- 隐藏进度条
function HideLoading()
    if not MaskLayer then return end
    MaskLayer:Hide()
end

-- 获取公会银行格子信息
-- return: slotInfos:每个格子对应的物品信息 itemInfos:每个物品对应的格子信息
function GetGuildBankSlotInfos(tab)
    local slotInfos = {}
    local itemInfos = {}
    for slot = 1, GUILDBANK_TAB_ITEM_SIZE do
        Continue()
        local info = {}
        local _, count = GetGuildBankItemInfo(tab,slot)
        info.count = count
        if count > 0 then
            local link = GetGuildBankItemLink(tab, slot)
            if link then
                local item = {}
                local itemName, itemLink, itemQuality, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
                    itemEquipLoc, _, sellPrice, classID, subclassID, _, expacID, setID, isCraftingReagent
                    = GetItemInfo(link)
                item.itemId = tonumber(string.match(link, "item:(%d*)") or "0")
                item.itemName = itemName
                item.itemLink = itemLink
                item.itemQuality = itemQuality
                item.itemLevel = itemLevel
                item.itemMinLevel = itemMinLevel
                item.itemType = itemType
                item.itemSubType = itemSubType
                item.itemStackCount = itemStackCount
                item.itemEquipLoc = itemEquipLoc
                item.sellPrice = sellPrice
                item.classID = classID
                item.subclassID = subclassID
                item.expacID = expacID
                item.setID = setID
                item.isCraftingReagent = isCraftingReagent
                info.item = item
                
                -- 存储物品信息
                if item.itemId then
                    local itemInfo = itemInfos[item.itemId]
                    if not itemInfo then
                        itemInfo = {}
                        itemInfos[item.itemId] = itemInfo
                    end
                    tinsert(itemInfo,slot)
                end
            end
        end
        slotInfos[slot] = info
    end
    return slotInfos, itemInfos
end