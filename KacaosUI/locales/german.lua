local T, C, L = unpack(Tukui) -- Thanks to Ekst :)
T.kacaosrelease = GetAddOnMetadata("KacaosUI", "Version")

local wmes = CreateFrame("Frame")
wmes:RegisterEvent("PLAYER_ENTERING_WORLD")
wmes:SetScript("OnEvent", function(self, event)
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")

	print(L.wmes_1)
	print(L.wmes_2)
end )

if TukuiConfigUILocalization then
	if T.client == "deDE" then
		TukuiConfigUILocalization.unitframesstyle = "Unitframestyle waehle zwischen 1, 2 oder 3"
		TukuiConfigUILocalization.unitframestotshow = "Aktiviere Ziel des Ziels"
		TukuiConfigUILocalization.unitframespetshow = "Aktiviere Begleiteranzeige"
		TukuiConfigUILocalization.unitframeshpshow = "Zeige HP/MP auf dem Ziel (nur style1 u 3 layout)"
		TukuiConfigUILocalization.unitframeshpshowp = "Zeige HP/MP auf dem Spieler (nur style1 u. 3 layout)"
		TukuiConfigUILocalization.unitframesshowdb = "Zeige Debuffs auf dem Ziel (nur in Layout3)"
		TukuiConfigUILocalization.unitframescbbutton = "Zeige Zauberleisten Button/Icon (nur in Layout3)"
		TukuiConfigUILocalization.actionbarstyle = "Aktionsleistenstyle 1 oder 2"
		TukuiConfigUILocalization.actionbarallbars = "Aktiviere alle Bars (nur in Aktionsleistenlayout1)"
		TukuiConfigUILocalization.actionbarbar4 = "Aktiviere 2 Bars unten (nur in Aktionsleistenlayout1)"
		TukuiConfigUILocalization.actionbarb2bottom = "Aktiviere 3 Bars unten (funktioniert nur mit Aktiviere 2 Bars unten und Aktionsleistenlayout1)"
		TukuiConfigUILocalization.actionbarsidebar1mouseover = "Bar 5 auf mouseover"
		TukuiConfigUILocalization.actionbarsidebar2mouseover = "Bar 3 auf mouseover (nur in Aktionsleistenlayout1)"
		TukuiConfigUILocalization.actionbarsidebar3mouseover = "Bar 2 auf mouesover (nur in Aktionsleistenlayout1)"
		TukuiConfigUILocalization.chatchattab = "Aktiviere das Panel ueber dem Chat"
		TukuiConfigUILocalization.chatchatbackground = "Aktiviere den Chatbackground"
		TukuiConfigUILocalization.chatchattabshow = "Zeige Chattabs"
		TukuiConfigUILocalization.chatfadeout = "Aktiviere Fadeout des Chatbackgroundes infight"
		TukuiConfigUILocalization.chatchatbackgroundwidth = "Setze Breite des Chatbackgroundes"
		TukuiConfigUILocalization.chatchatbackgroundheight = "Setze Hoehe des Chatbackgroundes"
		TukuiConfigUILocalization.misc = "Verschiedenes"
		TukuiConfigUILocalization.miscilvlr = "Zeige Ilvl und Haltbarkeit im Charakterfenster"
		TukuiConfigUILocalization.miscraidstyle = "Waehle zwischen 1 und 2"
		TukuiConfigUILocalization.miscbuffreminder = "Aktiviere Buffreminder (zeigt ob gifte/armor etc. fehlen)"		
		TukuiConfigUILocalization.miscafkcam = "Aktiviere Afk Spin Cam"
		TukuiConfigUILocalization.miscuibuttons = "Aktiviere die UIbuttons neben der Minimap"
		TukuiConfigUILocalization.miscthreatbar = "Aktiviere Bedrohungsanzeige"
		TukuiConfigUILocalization.miscraidbuffreminder = "Aktiviere den Raidbuffreminder (anzeige wichtiger spells im raid)"
		TukuiConfigUILocalization.miscspecialbuff = "Setze Specialbuff im Raidbuffreminder"
		TukuiConfigUILocalization.mischyperlink = "Itemlinks im Chat per Mouseover"
		TukuiConfigUILocalization.aurasbuffsfadeout = "Blende die Spielerbuffs im Kampf aus"
		TukuiConfigUILocalization.tooltipilvl = "Aktiviere ilvl im Tooltip"
		else
		TukuiConfigUILocalization.unitframesstyle = "Unitframestyle choose 1, 2 or 3"
		TukuiConfigUILocalization.unitframestotshow = "Show Target of Target"
		TukuiConfigUILocalization.unitframespetshow = "Show Pet"
		TukuiConfigUILocalization.unitframeshpshow = "Show HP/MP value on Target (only on style1 and 3 layout)"
		TukuiConfigUILocalization.unitframeshpshowp = "Show HP/MP value on Player (only on style1 and 3 layout)"
		TukuiConfigUILocalization.unitframesshowdb = "Show debuffs on target (only layout3)"
		TukuiConfigUILocalization.unitframescbbutton = "Show castbar button/icon (only layout3)"
		TukuiConfigUILocalization.actionbarstyle = "Actionbarlayout 1 or 2"
		TukuiConfigUILocalization.actionbarallbars = "Show AllBars (only in actionbarlayout1)"
		TukuiConfigUILocalization.actionbarbar4 = "Activate 2 bars at the bottom (only in actionbarlayout1)"
		TukuiConfigUILocalization.actionbarb2bottom = "Activate 2 bars at the bottom (only useable with activated option Activate 2 bars at the bottom and Actionbarlayout1)"
		TukuiConfigUILocalization.actionbarsidebar1mouseover = "Bar 5 on mouseover"
		TukuiConfigUILocalization.actionbarsidebar2mouseover = "Bar 3 on mouseover (only on actionbarlayout1)"
		TukuiConfigUILocalization.actionbarsidebar3mouseover = "Bar 2 on mouesover (only on actionbarlayout1)"
		TukuiConfigUILocalization.chatchattab = "Show panel over the Chat"
		TukuiConfigUILocalization.chatchatbackground = "Show Chatbackground"
		TukuiConfigUILocalization.chatchattabshow = "Show Chattabs"
		TukuiConfigUILocalization.chatfadeout = "Fadeout chatbackground infight"
		TukuiConfigUILocalization.chatchatbackgroundwidth = "Set chatbackground width"
		TukuiConfigUILocalization.chatchatbackgroundheight = "Set chatbackground height"
		TukuiConfigUILocalization.misc = "Misc"
		TukuiConfigUILocalization.miscilvlr = "Show ilvl and durability in the Charakterframe"
		TukuiConfigUILocalization.miscraidstyle = "Choose between 1 and 2"
		TukuiConfigUILocalization.miscbuffreminder = "Activate buffreminder"
		TukuiConfigUILocalization.miscafkcam = "Activate Afk Spin Cam"
		TukuiConfigUILocalization.miscuibuttons = "Show UIbuttons left to the minimap"
		TukuiConfigUILocalization.miscthreatbar = "Show Threatbar"	
		TukuiConfigUILocalization.miscraidbuffreminder = "Activate the raidbuffreminder at the top"
		TukuiConfigUILocalization.miscspecialbuff = "Set Specialbuff im Raidbuffreminder"
		TukuiConfigUILocalization.mischyperlink = "Show itemlinks in chat on mouseover"
		TukuiConfigUILocalization.aurasbuffsfadeout = "Fadeout Playerbuffs infight"
		TukuiConfigUILocalization.tooltipilvl = "Show ilvl in tooltip"
	end	
end	


if T.client == "deDE" then
	L.wmes_1 = "Hey, |cff1E90FF"..T.myname.."!|r Willkommen zu |cff1E90FFKacaosUI|r v"..T.kacaosrelease..""
	L.wmes_2 = "Die akktuellste Version findest du unter: |cff00FF33http://www.tukui.org/forums/topic.php?id=18945|r"
	
	L.mover_castbarplayer = "Spieler Zauberleiste"
	L.mover_castbartarget = "Ziel Zauberleiste"
	
	L.mover_cbrunebar = "Runenbar"
	L.mover_cbcombo = "Combopunkte"
	L.mover_cbhpower = "Heilige Kraft"
	L.mover_cbsshards = "Seelensplitter"
	L.mover_cbtotem = "Totemtimer"
	L.mover_cbebar = "Eclipsebar"
	L.mover_debuffs = "PlayerDebuffs"
	
	L.threat = "Bedrohung"
	
	L.kui_help1 = "|cff1E90FFKacaosUI|r"
	L.kui_help1b = "\n   "..T.kacaosrelease
	L.kui_help2 = "|cffFF6347Alle Optionen sind in der Ingameconfig zu finden|r"
	L.kui_help3 = "\n\n|cff1E90FFAktionsleisten:|r"
	L.kui_help4 = "\nBei den rechten Bars gibt es eine mouseover funktion und bei den unteren Bars die Option mit"
	L.kui_help5 = "\n1 Bar (mit 14 buttons), 2 Bars oder 3 Bars (mit jeweils 12) buttons. Ebenso kann man zwischen"
	L.kui_help5a = "\ndem Layout1 und 2 entscheiden."
	L.kui_help6 = "\n\n|cff1E90FFEinheitenfenster:|r"
	L.kui_help7 = "\nBei den Einheitenfenstern gibt es die Option die Pet sowie TargetofTarget Anzeigen an- und"
	L.kui_help8 = "\nauszuschalten. Ausserdem kann man zwischen dem Layout1, 2 und 3 entscheiden. Ausserdem"
	L.kui_help9 = "\ngibt es noch die Option die HP und MP auf dem Spieler und dem Ziel einzelnt an- und"
	L.kui_help10 = "\nauszuschalten. Bei dem zweiten Layout sind diese immer an."
	L.kui_help10aa = "\n\n|cff1E90FFKlassenleisten / Zauberleisten:|r"
	L.kui_help10a = "\nUm die classbars zu aktivieren muss man in kacaosui_config-config.lua die entsprechende"
	L.kui_help10b = "\nbar auf true setzen. Die Groesse kann dort ebenfalls angepasst werden."
	L.kui_help10c = "\nVerschieben kann man die classbars und zauberleisten via moveui."
	L.kui_help10d = "\n|cffFF6347Bitte nicht in der Ingamconfig ''Aktiviere Klassenleiste'' aktivieren!!!|r"
	L.kui_help11 = "\n\n|cff1E90FFGeselligkeit:|r"
	L.kui_help12 = "\nBei dem Chat gibt es die Option den Background, das Panel in dem die Chattabs sind sowie"
	L.kui_help13 = "\ndie Chattabs an- und auszuschalten. Ausserdem kann man den Chatbackground im Kampf aus-"
	L.kui_help14 = "\nblenden lassen. Ihr findet ausserdem die Option den Chat zu scalen."
	L.kui_help15 = "\n\n|cff1E90FFVerschiedenes:|r"
	L.kui_help16 = "\nDort findet Ihr die Option um die AFK Spin cam, den Raidbuffreminder, den Buffreminder,"
	L.kui_help17 = "\ndie Bedrohungsanzeige und die UIButtons zu aktivieren. Ausserdem kann man dort Tooltips"
	L.kui_help18 = "\nim Chat per Mouseover anzeigen lassen. Man kann ebenso zwischen dem Raidlayout 1 und 2"
	L.kui_help18a = "\nswitchen, das Layout2 kann nur aktiviert werden wenn man im Heallayout spielt. Es ist"
	L.kui_help18b = "\nein vereinfachtes grid und vermutlich nicht wirklich zum heilen geeignet." 
	L.kui_help19 = "\n\n|cff1E90FFAuren:|r"
	L.kui_help20 = "\nDort kann man einstellen ob die Buffs im Kampf ausgeblendet werden sollen."
	L.kui_help21 = "\n\n|cff1E90FFTooltip:|r"
	L.kui_help22 = "\nDort kann man das ilvl im Tooltip aktivieren."
	L.kui_help22a = "\n\n|cffFF6347Weitere Infos stehen auch in der Ingameconfig in Klammern hinter manchen Optionen!!!|r"
	L.kui_help23 = "\n\n\nBei weiteren Fragen, fragt im Forum @ |cff00FF33http://www.tukui.org/forums/topic.php?id=18945|r"
else
	L.wmes_1 = "Hey, |cffFF6347"..T.myname.."!|r Welcome to |cffFF6347KacaosUI|r v"..T.kacaosrelease..""
	L.wmes_2 = "Latest version at: |cff00FF33http://www.tukui.org/forums/topic.php?id=18945|r"
	
	L.mover_cbrunebar = "Runebar"
	L.mover_cbcombo = "Combopoints"
	L.mover_cbhpower = "Holy Power"
	L.mover_cbsshards = "Soulshards"
	L.mover_cbtotem = "Totemtimers"
	L.mover_cbebar = "Eclipsebar"
	L.mover_debuffs = "PlayerDebuffs"
	
	L.threat = "Threat"
	
	L.kui_help1 = "|cff1E90FFKacaosUI|r v"
	L.kui_help1b = "\n   "..T.kacaosrelease
	L.kui_help2 = "|cffFF6347All Options are available threw the ingameconfig|r"
	L.kui_help3 = "\n\n|cff1E90FFActionbars:|r"
	L.kui_help4 = "\nThe three rightbars you can toggle via mouseover. At the Bottombars"
	L.kui_help5 = "\nyou can choose if you want 1 (with 14buttons), 2 or 3 (each with 12buttons). Also you"
	L.kui_help5a = "\ncan change between layout1 and 2."
	L.kui_help6 = "\n\n|cff1E90FFUnitframes:|r"
	L.kui_help7 = "\nThere you can choose if you want to enable / disable the pet and targetoftarget frames"
	L.kui_help8 = "\nAlso you can choose betweeen Layout1, 2 and 3. Also you find there an option"
	L.kui_help9 = "\nto enable or disable the HP and MP value of the Player and Target. On Layout2"
	L.kui_help10 = "\nthe HP and MP value is on all the time."
	L.kui_help10aa = "\n\n|cff1E90FFClassbars / Castbars:|r"
	L.kui_help10a = "\nIf you want to activate the classbars you need to go to kacaosui_config-config.lua"
	L.kui_help10b = "\nand set the bar on true. Also you can change the size there."
	L.kui_help10c = "\nYou can move the classbars and castbars ingame via the moveui command."
	L.kui_help10d = "\n|cffFF6347Dont activate in the ingameconfig ''activate classbars''!!!|r"
	L.kui_help11 = "\n\n|cff1E90FFChat:|r"
	L.kui_help12 = "\nThere you can choose if you want to enable / disable the background of your chat,"
	L.kui_help13 = "\nthe background of the tabpanel and the chattabs. Also you can enable the fadeout"
	L.kui_help14 = "\nof the chatbackground infight. You can scale the chat there too."
	L.kui_help15 = "\n\n|cff1E90FFMisc:|r"
	L.kui_help16 = "\nThere you can enable / disable the AFK spin cam, the Raidbuffreminder, the Buffreminder"
	L.kui_help17 = "\nthe threatbar and the uibuttons. Also you can enable / disable itemlinks in the chat"
	L.kui_help18 = "\nvia mouseover."
	L.kui_help18a = "\nAlso you can choose between raidlayout 1 and 2, layout2 works only with the heallayout."
	L.kui_help18b = "\nIt is an simple skinned grid. Maybe not very good for healers." 
	L.kui_help19 = "\n\n|cff1E90FFAuras:|r"
	L.kui_help20 = "\nThere you can enable / disable fadeout your buffs infight."
	L.kui_help21 = "\n\n|cff1E90FFTooltip:|r"
	L.kui_help22 = "\nThere you can enable / disable the ilvl in the tooltip."
	L.kui_help22a = "\n\n|cffFF6347More infos you can find in Ingame config in the brackets behindsome options!!!|r"
	L.kui_help23 = "\n\n\nIf you have more questions visit @ |cff00FF33http://www.tukui.org/forums/topic.php?id=18945|r"
end