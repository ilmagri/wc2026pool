@echo off
cd /d C:\WC2026\send

"C:\Program Files\Git\cmd\git.exe" add .

"C:\Program Files\Git\cmd\git.exe" diff --cached --quiet
if %errorlevel%==0 (
    echo No changes detected.
    exit /b
)

"C:\Program Files\Git\cmd\git.exe" commit -m "Auto update"
"C:\Program Files\Git\cmd\git.exe" push
