local EpicMusicPlayer = LibStub("AceAddon-3.0"):GetAddon("EpicMusicPlayer")

EpicMusicPlayerGui.skins = {
	classicblack = {
		name = "Classic Black",
		texturepath = "Interface\\AddOns\\EpicMusicPlayer\\gui\\pics\\",
		guiframe = { height = 50, width = 150},
		bgtexture = {bgFile = "Interface/Tooltips/UI-Tooltip-Background",
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
			tile = false, tileSize = 16, edgeSize = 16,
			insets = { left = 4, right = 4, top = 4, bottom = 4 }},
		--timebar = { align = "CENTER", height = 2, width = 140},
		text = { align = "TOP", height = 20, width = 130, offx = 0, offy = -5},
		artistColor = {r=1,g=1,b=1,a=1},
		titleColor = {r=1,g=1,b=1,a=1},
		backColor = {r=0,g=0,b=0,a=0.8},
		borderColor = {r=0,g=0,b=0,a=0.28},
		buttonColor = {r=0,g=0,b=0,a=1},
		last = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 20,
			offy = -24,
			normaltexture = "lastButton.tga",
			pushedtexture = "lastButton-p.tga",
			backgroundtexture = "buttonBackground.tga",
			onleftclick = EpicMusicPlayer.PlayLast,
			onrightclick = EpicMusicPlayerGui.SetLastModel,
		},
		play = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 36,
			offy = -24,
			normaltexture = "playButton.tga",
			pushedtexture = "playButton-p.tga",
			backgroundtexture = "buttonBackground.tga",
			normaltexture2 = "stopButton.tga",
			pushedtexture2 = "stopButton-p.tga",
			onleftclick = EpicMusicPlayerGui.TogglePlay,
			onrightclick = EpicMusicPlayerGui.TogglePlay,
		},
		next = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 52,
			offy = -24,
			normaltexture = "nextButton.tga",
			pushedtexture = "nextButton-p.tga",
			backgroundtexture = "buttonBackground.tga",
			onleftclick = EpicMusicPlayer.OnNextClick,
			onrightclick = EpicMusicPlayerGui.SetNextModel,
		},
		random = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 82,
			offy = -24,
			normaltexture = "randomButton.tga",
			pushedtexture = "randomButton-p.tga",
			backgroundtexture = "buttonBackground.tga",
			normaltexture2 = "randomButtonOff.tga",
			pushedtexture2 = "randomButtonOff-p.tga",
			onleftclick = EpicMusicPlayer.ToggleRandom,
			onrightclick = EpicMusicPlayerGui.ToggleDancer,
		},
		config = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 98,
			offy = -24,
			normaltexture = "configButton.tga",
			pushedtexture = "configButton-p.tga",
			backgroundtexture = "buttonBackground.tga",
			onleftclick = EpicMusicPlayer.ShowConfig,
			onrightclick = EpicMusicPlayer.ToggleMute,
		},
		playlist = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 114,
			offy = -24,
			normaltexture = "listButton.tga",
			pushedtexture = "listButton-p.tga",
			backgroundtexture = "buttonBackground.tga",
			onleftclick = EpicMusicPlayer.TogglePlayListGui,
			onrightclick = EpicMusicPlayer.ToggleList,
		},
	},
	-- cataclysm layout -------------------------------------------------------------------------------------
	cataclysm = {
		name = "Cataclysm",
		texturepath = "Interface\\AddOns\\EpicMusicPlayer\\gui\\pics\\cata\\",
		bgtexture = {bgFile = "Interface\\AddOns\\EpicMusicPlayer\\gui\\pics\\cata\\cata-skin.tga",
			edgeFile = nil,
			tile = false},
		guiframe = { height = 64, width = 256},
		text = { align = "TOP", height = 20, width = 120, offx = 6, offy = -10},
		timer = { align = "TOP", height = 20, width = 40, offx = -78, offy = -10},
		buttonColor = {r=1, g=1, b=1, a=1},
		backColor = {r=1, g=1, b=1, a=1},
		artistColor = {r=0.83, g=0.22, b=0, a=1},
		titleColor = {r=1, g=0.73, b=0.1, a=1},
		last = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 85,
			offy = -28,
			normaltexture = "cata-last.tga",
			pushedtexture = "cata-last-p.tga",
			backgroundtexture = "cata-back.tga",
			onleftclick = EpicMusicPlayer.PlayLast,
			onrightclick = EpicMusicPlayerGui.SetLastModel,
		},
		play = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 101,
			offy = -28,
			normaltexture = "cata-play.tga",
			pushedtexture = "cata-play-p.tga",
			backgroundtexture = "cata-back.tga",
			normaltexture2 = "cata-stop.tga",
			pushedtexture2 = "cata-stop-p.tga",
			onleftclick = EpicMusicPlayerGui.TogglePlay,
			onrightclick = EpicMusicPlayerGui.TogglePlay,
		},
		next = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 117,
			offy = -28,
			normaltexture = "cata-next.tga",
			pushedtexture = "cata-next-p.tga",
			backgroundtexture = "cata-back.tga",
			onleftclick = EpicMusicPlayer.OnNextClick,
			onrightclick = EpicMusicPlayerGui.SetNextModel,
		},
		random = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 138,
			offy = -28,
			normaltexture = "cata-randomon.tga",
			pushedtexture = "cata-randomon-p.tga",
			backgroundtexture = "cata-back.tga",
			normaltexture2 = "cata-randomoff.tga",
			pushedtexture2 = "cata-randomoff-p.tga",
			onleftclick = EpicMusicPlayer.ToggleRandom,
			onrightclick = EpicMusicPlayerGui.ToggleDancer,
		},
		config = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 154,
			offy = -28,
			normaltexture = "cata-conf.tga",
			pushedtexture = "cata-conf-p.tga",
			backgroundtexture = "cata-back.tga",
			onleftclick = EpicMusicPlayer.ShowConfig,
			onrightclick = EpicMusicPlayer.ToggleMute,
		},
		playlist = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 170,
			offy = -28,
			normaltexture = "cata-list.tga",
			pushedtexture = "cata-list-p.tga",
			backgroundtexture = "cata-back.tga",
			onleftclick = EpicMusicPlayer.TogglePlayListGui,
			onrightclick = EpicMusicPlayer.ToggleList,
		},
	},
	-- cataclysm layout -------------------------------------------------------------------------------------
	cataclysm_white = {
		name = "Cataclysm White",
		texturepath = "Interface\\AddOns\\EpicMusicPlayer\\gui\\pics\\",
		bgtexture = {bgFile = "Interface\\AddOns\\EpicMusicPlayer\\gui\\pics\\cata\\cata-skin.tga",
			edgeFile = nil,
			tile = false},
		guiframe = { height = 64, width = 256},
		text = { align = "TOP", height = 20, width = 120, offx = 6, offy = -10},
		timer = { align = "TOP", height = 20, width = 40, offx = -78, offy = -10},
		buttonColor = {r=1, g=1, b=1, a=1},
		backColor = {r=1, g=1, b=1, a=1},
		artistColor = {r=0.83, g=0.22, b=0, a=1},
		titleColor = {r=1, g=1, b=1, a=1},
		last = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 85,
			offy = -28,
			normaltexture = "lastButton.tga",
			pushedtexture = "lastButton-p.tga",
			backgroundtexture = "cata\\cata-back.tga",
			onleftclick = EpicMusicPlayer.PlayLast,
			onrightclick = EpicMusicPlayerGui.SetLastModel,
		},
		play = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 101,
			offy = -28,
			normaltexture = "playButton.tga",
			pushedtexture = "playButton-p.tga",
			normaltexture2 = "stopButton.tga",
			pushedtexture2 = "stopButton-p.tga",
			backgroundtexture = "cata\\cata-back.tga",
			onleftclick = EpicMusicPlayerGui.TogglePlay,
			onrightclick = EpicMusicPlayerGui.TogglePlay,
		},
		next = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 117,
			offy = -28,
			normaltexture = "nextButton.tga",
			pushedtexture = "nextButton-p.tga",
			backgroundtexture = "cata\\cata-back.tga",
			onleftclick = EpicMusicPlayer.OnNextClick,
			onrightclick = EpicMusicPlayerGui.SetNextModel,
		},
		random = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 138,
			offy = -28,
			normaltexture = "randomButton.tga",
			pushedtexture = "randomButton-p.tga",
			backgroundtexture = "cata\\cata-back.tga",
			normaltexture2 = "randomButtonOff.tga",
			pushedtexture2 = "randomButtonOff-p.tga",
			onleftclick = EpicMusicPlayer.ToggleRandom,
			onrightclick = EpicMusicPlayerGui.ToggleDancer,
		},
		config = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 154,
			offy = -28,
			normaltexture = "configButton.tga",
			pushedtexture = "configButton-p.tga",
			backgroundtexture = "cata\\cata-back.tga",
			onleftclick = EpicMusicPlayer.ShowConfig,
			onrightclick = EpicMusicPlayer.ToggleMute,
		},
		playlist = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 170,
			offy = -28,
			normaltexture = "listButton.tga",
			pushedtexture = "listButton-p.tga",
			backgroundtexture = "cata\\cata-back.tga",
			normaltexture = "listButton.tga",
			pushedtexture = "listButton-p.tga",
			onleftclick = EpicMusicPlayer.TogglePlayListGui,
			onrightclick = EpicMusicPlayerGui.SetNextModel,
		},
	},
	-- quest
	quest = {
		name = "Quest",
		guiframe = { height = 26, width = 200},
		--timebar = { align = "CENTER", height = 2, width = 50},
		text = { align = "TOP", height = 20, width = 130, offx = -20, offy = -3},
		texturepath = "Interface\\AddOns\\EpicMusicPlayer\\gui\\pics\\quest\\",
		atlasTexture = { atlas = "Objective-Header",height = 80, width = 250, offx = -10, offy = 10},
		buttonColor = {r=0, g=1, b=0, a=1},
		backColor = {r=1, g=1, b=1, a=1},
		artistColor = {r=1, g=0.82, b=0, a=1},
		titleColor = {r=1, g=1, b=1, a=1},
		play = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 146,
			offy = -5,
			normaltexture = "play.tga",
			pushedtexture = "play-p.tga",
			normaltexture2 = "stop.tga",
			pushedtexture2 = "stop-p.tga",
			onleftclick = EpicMusicPlayerGui.TogglePlay,
			onrightclick = nil,
		},
		next = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 160,
			offy = -5,
			normaltexture = "next.tga",
			pushedtexture = "next-p.tga",
			onleftclick = EpicMusicPlayer.OnNextClick,
			onrightclick = EpicMusicPlayerGui.SetNextModel,
		},
		playlist = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 175,
			offy = -5,
			normaltexture = "list.tga",
			pushedtexture = "list-p.tga",
			onleftclick = EpicMusicPlayer.TogglePlayListGui,
			onrightclick = EpicMusicPlayerGui.ShowConfig,
		},
	},
	-- compact line
	compact = {
		name = "Compact",
		guiframe = { height = 26, width = 200},
		--timebar = { align = "CENTER", height = 2, width = 50},
		text = { align = "TOP", height = 20, width = 135, offx = 7, offy = -3},
		bgtexture =  {bgFile = "Interface/Tooltips/UI-Tooltip-Background",
			edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
			tile = false, tileSize = 16, edgeSize = 16,
			insets = { left = 4, right = 4, top = 4, bottom = 4 }},
		texturepath = "Interface\\AddOns\\EpicMusicPlayer\\gui\\pics\\",
		--atlasTexture = { atlas = "Objective-Header",height = 80, width = 250, offx = -10, offy = 10},
		buttonColor = {r=0, g=1, b=0, a=1},
		backColor = {r=1, g=1, b=1, a=1},
		artistColor = {r=0.83, g=1, b=0, a=1},
		titleColor = {r=1, g=1, b=1, a=1},
		play = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 5,
			offy = -5,
			normaltexture = "playButton.tga",
			pushedtexture = "playButton-p.tga",
			--backgroundtexture = "buttonBackground.tga",
			normaltexture2 = "stopButton.tga",
			pushedtexture2 = "stopButton-p.tga",
			onleftclick = EpicMusicPlayerGui.TogglePlay,
			onrightclick = nil,
		},
		next = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 22,
			offy = -5,
			normaltexture = "nextButton.tga",
			pushedtexture = "nextButton-p.tga",
			--backgroundtexture = "buttonBackground.tga",
			onleftclick = EpicMusicPlayer.OnNextClick,
			onrightclick = EpicMusicPlayerGui.SetNextModel,
		},
		playlist = {
			type = "Button",
			height = 16,
			width = 16,
			offx = 177,
			offy = -5,
			normaltexture = "listButton.tga",
			pushedtexture = "listButton-p.tga",
			--backgroundtexture = "buttonBackground.tga",
			onleftclick = EpicMusicPlayer.TogglePlayListGui,
			onrightclick = EpicMusicPlayerGui.ShowConfig,
		},
	},
}