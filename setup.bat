rem =======================================================
rem		file : 
rem				setup.bat
rem		description : 
rem				Initial environment to study
rem 
rem  Date		Owner		Description
rem	-------------------------------------------------------
rem  20220103	ktaiwan		Initial creation.
rem =======================================================
@echo off

rem Remove exist drive and set path
subst s: /d
set EDU_PATH="c:\CodingChildren"

rem Make folders
mkdir %EDU_PATH%
mkdir %EDU_PATH%"\C"
mkdir %EDU_PATH%"\Python"
mkdir %EDU_PATH%"\Scratch"


rem Create virtual drive
subst s: %EDU_PATH%

copy go.bat %EDU_PATH%\go.bat

rem Ownership
icacls %EDU_PATH% /grant Administrator:F
icacls %EDU_PATH%\go.bat /grant Administrator:RX

rem Regist Auto Starting
Reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v AutoGo /t REG_SZ /d %EDU_PATH%"\go.bat" /f
