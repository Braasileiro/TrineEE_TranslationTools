@ECHO OFF

SET LOCALE=%1

IF "%LOCALE%" == "" (
	ECHO Usage: make.bat [locale_name]
	GOTO END:
)

REM CLEAR_CACHE
	:CLEAR_QUESTION
	CLS
	SET /p OPTION=Creating a new locale will erase all the content already exists from the 'lua' folder. If this is the first time you are generating a locale, ignore this message. Do you wish to continue?[Y/N]?
	IF "%OPTION%" EQU "y" GOTO :PATH_CREATE
	IF "%OPTION%" EQU "n" GOTO :END
	GOTO :CLEAR_QUESTION
REM CLEAR_CACHE

:PATH_CREATE
	ECHO Updating directories...

	RMDIR /s /q lua 2>NUL
	RMDIR /s /q output 2>NUL

	MKDIR lua
	MKDIR lua\data
	MKDIR lua\data\locale
	MKDIR lua\data\script
	MKDIR lua\data\locale\audio
	MKDIR lua\data\locale\gui
	MKDIR lua\data\locale\subtitles
	MKDIR lua\data\locale\audio\%LOCALE%
	MKDIR lua\data\locale\gui\%LOCALE%
	MKDIR lua\data\locale\gui\%LOCALE%\hud
	MKDIR lua\data\locale\gui\%LOCALE%\menu
	MKDIR lua\data\locale\gui\%LOCALE%\menu\mainmenu
	MKDIR lua\data\locale\subtitles\%LOCALE%
	MKDIR lua\data\script\misc
REM PATH_CREATE

REM COPY_LUAS_NEW_LOCALE
	ECHO Creating a new locale '%LOCALE%'...

	copy base\data\locale\gui\en\controller.lua lua\data\locale\gui\%LOCALE%\controller.lua >NUL
	copy base\data\locale\gui\en\extras.lua lua\data\locale\gui\%LOCALE%\extras.lua >NUL
	copy base\data\locale\gui\en\extras_pc.lua lua\data\locale\gui\%LOCALE%\extras_pc.lua >NUL
	copy base\data\locale\gui\en\misc.lua lua\data\locale\gui\%LOCALE%\misc.lua >NUL
	copy base\data\locale\gui\en\systemmessages.lua lua\data\locale\gui\%LOCALE%\systemmessages.lua >NUL
	copy base\data\locale\gui\en\hud\character_change_request.lua lua\data\locale\gui\%LOCALE%\hud\character_change_request.lua >NUL
	copy base\data\locale\gui\en\hud\collection_messages_window.lua lua\data\locale\gui\%LOCALE%\hud\collection_messages_window.lua >NUL
	copy base\data\locale\gui\en\hud\experience_window.lua lua\data\locale\gui\%LOCALE%\hud\experience_window.lua >NUL
	copy base\data\locale\gui\en\hud\misc.lua lua\data\locale\gui\%LOCALE%\hud\misc.lua >NUL
	copy base\data\locale\gui\en\hud\picksecretwindow.lua lua\data\locale\gui\%LOCALE%\hud\picksecretwindow.lua >NUL
	copy base\data\locale\gui\en\hud\touchscreen.lua lua\data\locale\gui\%LOCALE%\hud\touchscreen.lua >NUL
	copy base\data\locale\gui\en\hud\tutorial_tooltips.lua lua\data\locale\gui\%LOCALE%\hud\tutorial_tooltips.lua >NUL
	copy base\data\locale\gui\en\hud\weapon_window.lua lua\data\locale\gui\%LOCALE%\hud\weapon_window.lua >NUL
	copy base\data\locale\gui\en\menu\audiovolume.lua lua\data\locale\gui\%LOCALE%\menu\audiovolume.lua >NUL
	copy base\data\locale\gui\en\menu\controllerdisconnectedpopup.lua lua\data\locale\gui\%LOCALE%\menu\controllerdisconnectedpopup.lua >NUL
	copy base\data\locale\gui\en\menu\dialog.lua lua\data\locale\gui\%LOCALE%\menu\dialog.lua >NUL
	copy base\data\locale\gui\en\menu\difficulty.lua lua\data\locale\gui\%LOCALE%\menu\difficulty.lua >NUL
	copy base\data\locale\gui\en\menu\disconnectedpopup.lua lua\data\locale\gui\%LOCALE%\menu\disconnectedpopup.lua >NUL
	copy base\data\locale\gui\en\menu\dropdownpopup.lua lua\data\locale\gui\%LOCALE%\menu\dropdownpopup.lua >NUL
	copy base\data\locale\gui\en\menu\gameovermenu.lua lua\data\locale\gui\%LOCALE%\menu\gameovermenu.lua >NUL
	copy base\data\locale\gui\en\menu\ingameoptionsmenu.lua lua\data\locale\gui\%LOCALE%\menu\ingameoptionsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\inventory.lua lua\data\locale\gui\%LOCALE%\menu\inventory.lua >NUL
	copy base\data\locale\gui\en\menu\joininfopopup.lua lua\data\locale\gui\%LOCALE%\menu\joininfopopup.lua >NUL
	copy base\data\locale\gui\en\menu\listview.lua lua\data\locale\gui\%LOCALE%\menu\listview.lua >NUL
	copy base\data\locale\gui\en\menu\loadingwindow.lua lua\data\locale\gui\%LOCALE%\menu\loadingwindow.lua >NUL
	copy base\data\locale\gui\en\menu\messageboxpopup.lua lua\data\locale\gui\%LOCALE%\menu\messageboxpopup.lua >NUL
	copy base\data\locale\gui\en\menu\mission.lua lua\data\locale\gui\%LOCALE%\menu\mission.lua >NUL
	copy base\data\locale\gui\en\menu\nomoreplayerspopup.lua lua\data\locale\gui\%LOCALE%\menu\nomoreplayerspopup.lua >NUL
	copy base\data\locale\gui\en\menu\pausegame.lua lua\data\locale\gui\%LOCALE%\menu\pausegame.lua >NUL
	copy base\data\locale\gui\en\menu\pausemenu.lua lua\data\locale\gui\%LOCALE%\menu\pausemenu.lua >NUL
	copy base\data\locale\gui\en\menu\previewmenu.lua lua\data\locale\gui\%LOCALE%\menu\previewmenu.lua >NUL
	copy base\data\locale\gui\en\menu\saveinfopopup.lua lua\data\locale\gui\%LOCALE%\menu\saveinfopopup.lua >NUL
	copy base\data\locale\gui\en\menu\trophies.lua lua\data\locale\gui\%LOCALE%\menu\trophies.lua >NUL
	copy base\data\locale\gui\en\menu\trophypopup.lua lua\data\locale\gui\%LOCALE%\menu\trophypopup.lua >NUL
	copy base\data\locale\gui\en\menu\upgrade.lua lua\data\locale\gui\%LOCALE%\menu\upgrade.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\achievementsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\achievementsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\audiovolumemenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\audiovolumemenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\campaignselectmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\campaignselectmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\common.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\common.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\conceptartunlocksmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\conceptartunlocksmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\controlsettings.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsettings.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\controlsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\controlsmenupc.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\controlsmenupc.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\creditsdata.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsdata.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\creditsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\creditsviewevenmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewevenmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\creditsviewoddmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\creditsviewoddmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\demosplashmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\demosplashmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\developermenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\developermenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\dlcsplashmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\dlcsplashmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\helpandoptionsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\helpandoptionsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\hostgamemenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\hostgamemenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\howtoplaymenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\howtoplaymenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\joinonlinegamemenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\joinonlinegamemenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\languagesettingsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\languagesettingsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\leaderboardsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\leaderboardsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\main.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\main.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\mainmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\mainmenupre.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\mainmenupre.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\microphonesettingsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\microphonesettingsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\multiplayermenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\multiplayermenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\networksettingsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\networksettingsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\playmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\playmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\poemunlocksmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\poemunlocksmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\profileselectmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\profileselectmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\profilesettingsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\profilesettingsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\settingsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\settingsmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\singleplayermenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayermenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\singleplayerstartdifficultymenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\singleplayerstartdifficultymenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\supportedcontrollersmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\supportedcontrollersmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\trine3admenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\trine3admenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\trophiesandextrasmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\trophiesandextrasmenu.lua >NUL
	copy base\data\locale\gui\en\menu\mainmenu\visualsettingsmenu.lua lua\data\locale\gui\%LOCALE%\menu\mainmenu\visualsettingsmenu.lua >NUL
	copy base\data\locale\subtitles\en\locales.lua lua\data\locale\subtitles\%LOCALE%\locales.lua >NUL
	copy base\data\script\misc\locale_settings.lua lua\data\script\misc\locale_settings.lua >NUL

	ECHO The locale '%LOCALE%' created successfully.
	ECHO Edit all files on translation, WITHOUT EXCEPTION.
	ECHO Some files have nothing to translate, those you do not have to edit.
	ECHO The file 'locale_settings.lua' in '..\data\script\misc\' folder has fields where you have to edit, it is very clear in the file. The fields start with 'your_locale...'.
REM COPY_LUAS_NEW_LOCALE

:END
