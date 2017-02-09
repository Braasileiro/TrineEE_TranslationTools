@ECHO OFF

SET FBQ=%1
SET LOCALE=%2

IF "%FBQ%" == "" (
	ECHO Usage: build.bat [fbq_name] [locale_name]
	GOTO :END
)

IF "%LOCALE%" == "" (
	ECHO Usage: build.bat [fbq_name] [locale_name]
	GOTO :END
)

REM PATH_CREATE
	CLS
	ECHO Creating output directories...
	MKDIR output
	MKDIR output\data
	MKDIR output\data\locale
	MKDIR output\data\script
	MKDIR output\data\locale\audio
	MKDIR output\data\locale\gui
	MKDIR output\data\locale\subtitles
	MKDIR output\data\locale\audio\%LOCALE%
	MKDIR output\data\locale\gui\%LOCALE%
	MKDIR output\data\locale\gui\%LOCALE%\hud
	MKDIR output\data\locale\gui\%LOCALE%\menu
	MKDIR output\data\locale\gui\%LOCALE%\menu\mainmenu
	MKDIR output\data\locale\subtitles\%LOCALE%
	MKDIR output\data\script\misc
REM PATH_CREATE

REM BUILD_LUA_x86
	CLS
	ECHO Building x86...

	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\controller.lub" lua\data\locale\gui\%LOCALE%\controller.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\extras.lub" lua\data\locale\gui\%LOCALE%\extras.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\extras_pc.lub" lua\data\locale\gui\%LOCALE%\extras_pc.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\misc.lub" lua\data\locale\gui\%LOCALE%\misc.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\systemmessages.lub" lua\data\locale\gui\%LOCALE%\systemmessages.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\character_change_request.lub" lua\data\locale\gui\%LOCALE%\hud\character_change_request.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\collection_messages_window.lub" lua\data\locale\gui\%LOCALE%\hud\collection_messages_window.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\experience_window.lub" lua\data\locale\gui\%LOCALE%\hud\experience_window.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\misc.lub" lua\data\locale\gui\%LOCALE%\hud\misc.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\picksecretwindow.lub" lua\data\locale\gui\%LOCALE%\hud\picksecretwindow.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\touchscreen.lub" lua\data\locale\gui\%LOCALE%\hud\touchscreen.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\tutorial_tooltips.lub" lua\data\locale\gui\%LOCALE%\hud\tutorial_tooltips.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\hud\weapon_window.lub" lua\data\locale\gui\%LOCALE%\hud\weapon_window.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\audiovolume.lub" lua\data\locale\gui\%LOCALE%\menu\audiovolume.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\controllerdisconnectedpopup.lub" lua\data\locale\gui\%LOCALE%\menu\controllerdisconnectedpopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\dialog.lub" lua\data\locale\gui\%LOCALE%\menu\dialog.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\difficulty.lub" lua\data\locale\gui\%LOCALE%\menu\difficulty.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\disconnectedpopup.lub" lua\data\locale\gui\%LOCALE%\menu\disconnectedpopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\dropdownpopup.lub" lua\data\locale\gui\%LOCALE%\menu\dropdownpopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\gameovermenu.lub" lua\data\locale\gui\%LOCALE%\menu\gameovermenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\ingameoptionsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\ingameoptionsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\inventory.lub" lua\data\locale\gui\%LOCALE%\menu\inventory.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\joininfopopup.lub" lua\data\locale\gui\%LOCALE%\menu\joininfopopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\listview.lub" lua\data\locale\gui\%LOCALE%\menu\listview.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\loadingwindow.lub" lua\data\locale\gui\%LOCALE%\menu\loadingwindow.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\messageboxpopup.lub" lua\data\locale\gui\%LOCALE%\menu\messageboxpopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mission.lub" lua\data\locale\gui\%LOCALE%\menu\mission.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\nomoreplayerspopup.lub" lua\data\locale\gui\%LOCALE%\menu\nomoreplayerspopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\pausegame.lub" lua\data\locale\gui\%LOCALE%\menu\pausegame.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\pausemenu.lub" lua\data\locale\gui\%LOCALE%\menu\pausemenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\previewmenu.lub" lua\data\locale\gui\%LOCALE%\menu\previewmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\saveinfopopup.lub" lua\data\locale\gui\%LOCALE%\menu\saveinfopopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\trophies.lub" lua\data\locale\gui\%LOCALE%\menu\trophies.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\trophypopup.lub" lua\data\locale\gui\%LOCALE%\menu\trophypopup.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\upgrade.lub" lua\data\locale\gui\%LOCALE%\menu\upgrade.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\achievementsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\achievementsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\audiovolumemenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\audiovolumemenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\campaignselectmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\campaignselectmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\common.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\common.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\conceptartunlocksmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\conceptartunlocksmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\controlsettings.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsettings.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenupc.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenupc.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsdata.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsdata.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewevenmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewevenmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewoddmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewoddmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\demosplashmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\demosplashmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\developermenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\developermenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\dlcsplashmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\dlcsplashmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\helpandoptionsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\helpandoptionsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\hostgamemenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\hostgamemenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\howtoplaymenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\howtoplaymenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\joinonlinegamemenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\joinonlinegamemenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\languagesettingsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\languagesettingsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\leaderboardsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\leaderboardsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\main.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\main.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenupre.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenupre.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\microphonesettingsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\microphonesettingsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\multiplayermenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\multiplayermenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\networksettingsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\networksettingsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\playmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\playmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\poemunlocksmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\poemunlocksmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\profileselectmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\profileselectmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\profilesettingsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\profilesettingsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\settingsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\settingsmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayermenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayermenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayerstartdifficultymenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayerstartdifficultymenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\supportedcontrollersmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\supportedcontrollersmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\trine3admenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\trine3admenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\trophiesandextrasmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\trophiesandextrasmenu.lua
	bin\luac.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\visualsettingsmenu.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\visualsettingsmenu.lua
	bin\luac.exe -o "output\data\locale\subtitles\%LOCALE%\locales.lub" lua\data\locale\subtitles\%LOCALE%\locales.lua
	bin\luac.exe -o "output\data\script\misc\locale_settings.lub" lua\data\script\misc\locale_settings.lua
REM BUILD_LUA_x86

REM BUILD_LUA_x64
	ECHO Building x64...

	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\controller.x64.lub" lua\data\locale\gui\%LOCALE%\controller.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\extras.x64.lub" lua\data\locale\gui\%LOCALE%\extras.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\extras_pc.x64.lub" lua\data\locale\gui\%LOCALE%\extras_pc.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\misc.x64.lub" lua\data\locale\gui\%LOCALE%\misc.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\systemmessages.x64.lub" lua\data\locale\gui\%LOCALE%\systemmessages.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\character_change_request.x64.lub" lua\data\locale\gui\%LOCALE%\hud\character_change_request.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\collection_messages_window.x64.lub" lua\data\locale\gui\%LOCALE%\hud\collection_messages_window.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\experience_window.x64.lub" lua\data\locale\gui\%LOCALE%\hud\experience_window.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\misc.x64.lub" lua\data\locale\gui\%LOCALE%\hud\misc.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\picksecretwindow.x64.lub" lua\data\locale\gui\%LOCALE%\hud\picksecretwindow.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\touchscreen.x64.lub" lua\data\locale\gui\%LOCALE%\hud\touchscreen.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\tutorial_tooltips.x64.lub" lua\data\locale\gui\%LOCALE%\hud\tutorial_tooltips.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\hud\weapon_window.x64.lub" lua\data\locale\gui\%LOCALE%\hud\weapon_window.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\audiovolume.x64.lub" lua\data\locale\gui\%LOCALE%\menu\audiovolume.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\controllerdisconnectedpopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\controllerdisconnectedpopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\dialog.x64.lub" lua\data\locale\gui\%LOCALE%\menu\dialog.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\difficulty.x64.lub" lua\data\locale\gui\%LOCALE%\menu\difficulty.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\disconnectedpopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\disconnectedpopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\dropdownpopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\dropdownpopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\gameovermenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\gameovermenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\ingameoptionsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\ingameoptionsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\inventory.x64.lub" lua\data\locale\gui\%LOCALE%\menu\inventory.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\joininfopopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\joininfopopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\listview.x64.lub" lua\data\locale\gui\%LOCALE%\menu\listview.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\loadingwindow.x64.lub" lua\data\locale\gui\%LOCALE%\menu\loadingwindow.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\messageboxpopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\messageboxpopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mission.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mission.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\nomoreplayerspopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\nomoreplayerspopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\pausegame.x64.lub" lua\data\locale\gui\%LOCALE%\menu\pausegame.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\pausemenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\pausemenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\previewmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\previewmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\saveinfopopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\saveinfopopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\trophies.x64.lub" lua\data\locale\gui\%LOCALE%\menu\trophies.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\trophypopup.x64.lub" lua\data\locale\gui\%LOCALE%\menu\trophypopup.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\upgrade.x64.lub" lua\data\locale\gui\%LOCALE%\menu\upgrade.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\achievementsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\achievementsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\audiovolumemenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\audiovolumemenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\campaignselectmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\campaignselectmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\common.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\common.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\conceptartunlocksmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\conceptartunlocksmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\controlsettings.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsettings.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenupc.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenupc.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsdata.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsdata.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewevenmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewevenmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewoddmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewoddmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\demosplashmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\demosplashmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\developermenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\developermenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\dlcsplashmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\dlcsplashmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\helpandoptionsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\helpandoptionsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\hostgamemenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\hostgamemenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\howtoplaymenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\howtoplaymenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\joinonlinegamemenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\joinonlinegamemenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\languagesettingsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\languagesettingsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\leaderboardsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\leaderboardsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\main.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\main.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenupre.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenupre.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\microphonesettingsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\microphonesettingsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\multiplayermenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\multiplayermenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\networksettingsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\networksettingsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\playmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\playmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\poemunlocksmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\poemunlocksmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\profileselectmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\profileselectmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\profilesettingsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\profilesettingsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\settingsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\settingsmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayermenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayermenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayerstartdifficultymenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayerstartdifficultymenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\supportedcontrollersmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\supportedcontrollersmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\trine3admenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\trine3admenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\trophiesandextrasmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\trophiesandextrasmenu.lua
	bin\luac64.exe -o "output\data\locale\gui\%LOCALE%\menu\mainmenu\visualsettingsmenu.x64.lub" lua\data\locale\gui\%LOCALE%\menu\mainmenu\visualsettingsmenu.lua
	bin\luac64.exe -o "output\data\locale\subtitles\%LOCALE%\locales.x64.lub" lua\data\locale\subtitles\%LOCALE%\locales.lua
	bin\luac64.exe -o "output\data\script\misc\locale_settings.x64.lub" lua\data\script\misc\locale_settings.lua
REM BUILD_LUA_x64

REM PACK_FBQ
	ECHO Packing fbq...

	bin\archiver.exe -verbose -create="%FBQ%".fbq output\

	RMDIR /s /q output 2>NUL

	ECHO Build complete.
REM PACK_FBQ

:END