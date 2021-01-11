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

echo Mainboard 
wmic baseboard list brief
echo CPU  
wmic cpu get name
echo GPU
wmic path win32_VideoController get name 
echo RAM
wmic MEMORYCHIP get BankLabel, DeviceLocator, Capacity, Speed
echo OS 
wmic os get Caption,OSArchitecture
echo HDD 
wmic diskdrive get model,size
echo Sound
wmic sounddev get Caption  
echo NIC
wmic nic get caption

pause

echo Software
wmic product get name

pause