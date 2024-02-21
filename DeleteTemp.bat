cd /D C:\Users 
for /D %%a in (*.*) do DEL /F /S /Q "%%a\AppData\Local\Temp\*.*" 
for /D %%a in (*.*) do FOR /D %%b IN ("%%a\AppData\Local\Temp\*.*") DO RMDIR /S /Q "%%b" 
DEL /F /S /Q %windir%\TEMP 
net stop wuauserv 
DEL /F /S /Q %windir%\SoftwareDistribution 
net start wuauserv 
