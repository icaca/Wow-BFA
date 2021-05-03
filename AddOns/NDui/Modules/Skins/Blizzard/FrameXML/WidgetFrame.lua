local _, ns = ...
local B, C, L, DB = unpack(ns)

local Type_StatusBar = _G.Enum.UIWidgetVisualizationType.StatusBar
local Type_CaptureBar = _G.Enum.UIWidgetVisualizationType.CaptureBar
local Type_SpellDisplay = _G.Enum.UIWidgetVisualizationType.SpellDisplay
local Type_DoubleStatusBar = _G.Enum.UIWidgetVisualizationType.DoubleStatusBar

local atlasColors = {
	["UI-Frame-Bar-Fill-Blue"] = {.2, .6, 1},
	["UI-Frame-Bar-Fill-Red"] = {.9, .2, .2},
	["UI-Frame-Bar-Fill-Yellow"] = {1, .6, 0},
	["objectivewidget-bar-fill-left"] = {.2, .6, 1},
	["objectivewidget-bar-fill-right"] = {.9, .2, .2},
	["EmberCourtScenario-Tracker-barfill"] = {.9, .2, .2},
}

function B:ReplaceWidgetBarTexture(atlas)
	if atlasColors[atlas] then
		self:SetStatusBarTexture(DB.normTex)
		self:SetStatusBarColor(unpack(atlasColors[atlas]))
	end
end

local function ReskinWidgetStatusBar(bar)
	if bar and not bar.styled then
		if bar.BG then bar.BG:SetAlpha(0) end
		if bar.BGLeft then bar.BGLeft:SetAlpha(0) end
		if bar.BGRight then bar.BGRight:SetAlpha(0) end
		if bar.BGCenter then bar.BGCenter:SetAlpha(0) end
		if bar.BorderLeft then bar.BorderLeft:SetAlpha(0) end
		if bar.BorderRight then bar.BorderRight:SetAlpha(0) end
		if bar.BorderCenter then bar.BorderCenter:SetAlpha(0) end
		if bar.Spark then bar.Spark:SetAlpha(0) end
		if bar.SparkGlow then bar.SparkGlow:SetAlpha(0) end
		if bar.BorderGlow then bar.BorderGlow:SetAlpha(0) end
		B.SetBD(bar)
		hooksecurefunc(bar, "SetStatusBarAtlas", B.ReplaceWidgetBarTexture)

		bar.styled = true
	end
end

local function ReskinDoubleStatusBarWidget(self)
	if not self.styled then
		ReskinWidgetStatusBar(self.LeftBar)
		ReskinWidgetStatusBar(self.RightBar)

		self.styled = true
	end
end

local function ReskinCaptureBarWidget(self)
	self.LeftBar:SetTexture(DB.normTex)
	self.NeutralBar:SetTexture(DB.normTex)
	self.RightBar:SetTexture(DB.normTex)

	self.LeftBar:SetVertexColor(.2, .6, 1)
	self.NeutralBar:SetVertexColor(.8, .8, .8)
	self.RightBar:SetVertexColor(.9, .2, .2)

	if not self.bg then
		self.LeftLine:SetAlpha(0)
		self.RightLine:SetAlpha(0)
		self.BarBackground:SetAlpha(0)
		self.Glow1:SetAlpha(0)
		self.Glow2:SetAlpha(0)
		self.Glow3:SetAlpha(0)

		self.bg = B.SetBD(self)
		self.bg:SetPoint("TOPLEFT", self.LeftBar, -2, 2)
		self.bg:SetPoint("BOTTOMRIGHT", self.RightBar, 2, -2)
	end
end

local function ReskinSpellDisplayWidget(self)
	if not self.styled then
		local widgetSpell = self.Spell
		widgetSpell.IconMask:Hide()
		widgetSpell.Border:SetTexture(nil)
		widgetSpell.DebuffBorder:SetTexture(nil)
		B.ReskinIcon(widgetSpell.Icon)

		self.styled = true
	end
end

local function ReskinWidgetFrames()
	for _, widgetFrame in pairs(_G.UIWidgetTopCenterContainerFrame.widgetFrames) do
		local widgetType = widgetFrame.widgetType
		if widgetType == Type_DoubleStatusBar then
			ReskinDoubleStatusBarWidget(widgetFrame)
		elseif widgetType == Type_SpellDisplay then
			ReskinSpellDisplayWidget(widgetFrame)
		elseif widgetType == Type_StatusBar then
			ReskinWidgetStatusBar(widgetFrame.Bar)
		end
	end

	for _, widgetFrame in pairs(_G.UIWidgetBelowMinimapContainerFrame.widgetFrames) do
		if widgetFrame.widgetType == Type_CaptureBar then
			ReskinCaptureBarWidget(widgetFrame)
		end
	end
end

tinsert(C.defaultThemes, function()
	if not C.db["Skins"]["BlizzardSkins"] then return end

	B:RegisterEvent("PLAYER_ENTERING_WORLD", ReskinWidgetFrames)
	B:RegisterEvent("UPDATE_ALL_UI_WIDGETS", ReskinWidgetFrames)

	hooksecurefunc(_G.UIWidgetTemplateStatusBarMixin, "Setup", function(self)
		ReskinWidgetStatusBar(self.Bar)
	end)

	hooksecurefunc(_G.UIWidgetTemplateCaptureBarMixin, "Setup", ReskinCaptureBarWidget)
	hooksecurefunc(_G.UIWidgetTemplateSpellDisplayMixin, "Setup", ReskinSpellDisplayWidget)
	hooksecurefunc(_G.UIWidgetTemplateDoubleStatusBarMixin, "Setup", ReskinDoubleStatusBarWidget)
end)