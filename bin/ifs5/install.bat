:: NOTE - this batch file assumes that it is being run from the
:: directory that contains the install files.
@echo off
cls
echo.
echo IF5.0 Install Script
echo.
echo.
xcopy /y /q /s /I *.* "C:\Program Files\IFS5"
regsvr32 /s "C:\Program Files\InvisibleGold\IFS5\imagefx.dll"
cls
echo.
echo.
echo.
::pause
cd "C:\Program Files\IFS5"
"C:\Program Files\IFS5\IFS5.exe"