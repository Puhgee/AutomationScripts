set folder = "C:\Files"
set occurencesToKeep = 4

REM Cleanup Folders (only keep newest)
for /f "skip=%occurencesToKeep% delims=" %%a in (
    'dir "%folder%\*" /t:c /a:d /o:-d /b'
) do (
    rd /s /q "%folder%\%%a"
)

REM Cleanup Files (only keep newest)
for /f "skip=%occurencesToKeep% delims" %%a in (
    'dir "%folder%\*" /t:c /a:-d /o:-d /b'
) do (
    del /f /q "%folder%\%%a"
)