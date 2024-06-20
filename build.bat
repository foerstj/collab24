chcp 65001
:: name of map
set map=collab24
:: name of map, case-sensitive
set map_cs=Collab 24
:: tank properties
set year=2024
set copyright=CC-BY-SA %year%
set author=Johannes Förstner

:: path of DSLOA documents dir (where Bits are)
set doc_dsloa=%USERPROFILE%\Documents\Dungeon Siege LoA
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

:: Compile map file
rmdir /S /Q "%tmp%\Bits"
robocopy "%doc_dsloa%\Bits\world\maps\%map%" "%tmp%\Bits\world\maps\%map%" /S
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\DSLOA\%map_cs%.dsmap" -copyright "%copyright%" -title "%map_cs%" -author "%author%"
if %errorlevel% neq 0 pause
