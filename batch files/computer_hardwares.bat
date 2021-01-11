@echo off

ECHO Please wait... Checking system information.
ECHO Windows 10 information
ECHO ==========================
ECHO WINDOWS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"

ECHO Please wait ... checking computer components and hardwares ...

ECHO ==========================
echo Mainboard 
ECHO ==========================
wmic baseboard list brief
ECHO ==========================
echo CPU  
ECHO ==========================
wmic cpu get name
ECHO ==========================
echo GPU
ECHO ==========================
wmic path win32_VideoController get name
ECHO ========================== 
echo RAM
ECHO ==========================
wmic MEMORYCHIP get BankLabel, DeviceLocator, Capacity, Speed
ECHO ==========================
echo OS 
ECHO ==========================
wmic os get Caption,OSArchitecture
ECHO ==========================
echo HDD 
ECHO ==========================
wmic diskdrive get model,size
ECHO ==========================
echo Sound
ECHO ==========================
wmic sounddev get Caption  
ECHO ==========================
echo NIC
ECHO ==========================
wmic nic get caption
ECHO ======================================
echo systeminfo MOREEEE DETAILLSSSS!!!
ECHO ======================================
systeminfo
pause

echo Software
wmic product get name

pause
