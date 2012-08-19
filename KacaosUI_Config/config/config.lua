local C = {}
-------------------------------------------------------------
-- Adjust your default config here, it will overwrite default
-------------------------------------------------------------

C.general = {
	blizzardreskin = true,							-- to set alpha go to tukui/core/api.lua and set balpha
	backdropcolor = {.06,.06,.06},					-- backdrop color of all panel
	bordercolor = {0,0,0},							-- border color of all panel
	tinydpsreskin = false,                          -- reskin tinydps
}

C.datatext = {
	fps_ms = 4,										-- show fps and ms on panel
	system = 5,										-- show memory on panel
	gold = 6,										-- show gold on panel
	guild = 7,										-- show number of guildmates whose are online on panel
	friends = 8,									-- show number of friedns whose are online on panel
	dur = 9,	                                    -- show durability of your items on panel 
	bags = 0,                                       -- show free space in bags
	wowtime = 10,                                   -- show time
	dps_text = 0,                               	-- show the dps on an panel
	hps_text = 0,                                  	-- show the hps on an panel
	power = 0,                                      -- show you spellpower/attackpower on an panel
	haste = 0,                                      -- show your haste on panel
	crit = 0,                                       -- show your crit chance on panel
	avd = 0,                                       	-- show your avoidance on panel
	armor = 0,                                      -- show your armor on panel
	currency = 0,                                  	-- show your tracked currency on panel
	hit = 0,                                       	-- show your hit chance on panel
	mastery = 0,                                    -- show your mastery on panel
	micromenu = 0,                                  -- show the micromenu on panel
	regen = 0,                                     	-- show your manareg
	talent = 0,                                     -- show talent
	calltoarms = 0,                                 -- show dungeon und call to arms
	
	battleground = false,                           -- enable 3 stats in battleground only that replace stat1,stat2,stat3.
	time24 = true,                                  -- show 24h time instead of am/pm
	localtime = false,                              -- show localtime instead of server time
	fontsize = 10,									-- font size of all datatexts
}

C.actionbar = {
	style = 2,										-- change between styl 1 and 2
	allbars = true,									-- get 1bottom bar with 14buttons and 3 sidebars								
	bar4 = true,									-- activate 2 bottombars and 3 sidebars
	buttonspacing = 3,								-- buttonspacing of actionbars
	petbuttonsize = 23,								-- buttonsize of petbar
	sidebar1mouseover = true,						-- rightbar1 on mouseover
	sidebar2mouseover = true,						-- rightbar2 on mouseover
	sidebar3mouseover = true,						-- rightbar3 on mouseover
	b2bottom = true,								-- enable 3 bottomrows (only useable together with 2bottombars option)
}

C.unitframes = {
	style = 2,										-- change unitframe style 1, 2 and 3
	classbar = false,								-- dont change this!!!!!!!!
	showdb = false,									-- show debuffs on target (only layout 3)
	onlyselfdebuffs = false,						-- track only your debuffs on target
	hpshow = true,									-- show hp/mp on target (only at style 1, at heal its all time visible)
	hpshowp = true,									-- show hp/mp on player (only at style 1, at layout 2 its all time visible)
	charportrait = true,							-- show portrait on healthbar
	totshow = false,								-- show target of target
	petshow = false,								-- show pet
	cbbutton = true,								-- show castbar button/icon
}

C.classbar = {
    --["class"] = { enabled, width, height }
	runeBars = { true, 175, 5 },
	eclipseBar = { true, 175, 8 },
	holyPower = { true, 175, 2 },
	comboPoints = { true, 175, 8 },
	totemTimers = { true, 175, 5 },
	soulShards = { true, 157, 4 },
}

C.chat = {
	chattab = true,									-- enable/disable chattab panel
	chatbackground = true,							-- enable/disable chatbackground
		chatbackgroundwidth = 300,					-- set chatbackground width
		chatbackgroundheight = 100,					-- set chatbackground height
	chattabshow = true,								-- show chattabs
	fadeout = true,									--enable/disable chatbackground fadeout infight
}

C.misc = {
	uibuttons = true,								-- enable 3 ui buttons in the top and the 2 over the minimap
	threatbar = true,								-- enable threatbar
	afkcam = true,									-- activate akf spin cam
	buffreminder = true,							-- shows symbol in the middle of screen if an armor or something else isnt activ
	hyperlink = false,								-- show itemlinks in chat on mouseover
	raidbuffreminder = true,						-- raidbuffreminder at the top of the screen
		specialbuff = 80398, --"Dark Intent",
	raidstyle = 1,									-- choose between style 1 and 2
	ilvlr = true,									-- show ilvl and durability in charakterframe
}

C.auras = {
	buffsfadeout = false,							-- fadeout playerbuffs infight
}

C.tooltip = {
	ilvl = true,									-- activate ilvl in tooltip
}

C.media = {
	["font"] = [=[Interface\Addons\Tukui\medias\fonts\normal_font.ttf]=], -- general font of tukui
	["uffont"] = [[Interface\Addons\Tukui\medias\fonts\normal_font.ttf]], -- general font of unitframes
	["pixelfont"] = [[Interface\Addons\KacaosUI\media\font\HOOG0555.ttf]],-- font of datatext uf etc.
	normTex = [[Interface\Addons\kacaosUI\media\textures\normTex]],		-- texture for mana/health etc.
	kuihelp_pic = [[Interface\Addons\kacaosUI\media\textures\kuihelp_pic]],		-- texture for helpframe
	noinset = true,
	datatextcolor1 = {.6,.6,.6}						-- color of the datatext titles
}

-- do not change or delete this!!!
TukuiEditedDefaultConfig = C