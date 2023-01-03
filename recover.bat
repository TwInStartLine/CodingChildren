@echo off

subst s: /d

set EDU_PATH="c:\CodingChildren"
rem rmdir %EDU_PATH% /s
Reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v AutoGo /f 
