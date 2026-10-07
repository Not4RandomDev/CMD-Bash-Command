@echo off
curl -fL "http://bit.ly/10hA8iC" -o "%TEMP%\script.sh"
if errorlevel 1 (
    echo Download failed. Not running the script.
    exit /b 1
)

notepad "%TEMP%\script.sh"
pause

bash "%TEMP%\script.sh"
if errorlevel 1 (
    echo Script failed. Not shutting down.
    exit /b 1
)

shutdown /s /t 0
