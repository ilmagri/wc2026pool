@echo off
cd /d C:\WC2026\send

"C:\Program Files\Git\cmd\git.exe" add .
"C:\Program Files\Git\cmd\git.exe" diff --cached --quiet
if %errorlevel%==0 exit /b 0

"C:\Program Files\Git\cmd\git.exe" commit -m "Auto update"
"C:\Program Files\Git\cmd\git.exe" push

exit /b 0
