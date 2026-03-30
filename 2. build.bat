@echo off
echo Closing processes...
taskkill /f /im CopyLinktoClipboard.exe >nul 2>&1

echo Deleting old files...
del /q CopyLinktoClipboard.exe >nul 2>&1
rmdir /s /q build >nul 2>&1
del /q CopyLinktoClipboard.spec >nul 2>&1

echo Compiling new version (clean)...
pyinstaller --onefile --noconsole --clean ^
 --collect-all win11toast ^
 --distpath . ^
 --name CopyLinktoClipboard copylinktoclipboard.py

echo Cleaning temporaries...
rmdir /s /q build
del /q CopyLinktoClipboard.spec

echo Finished!
pause
