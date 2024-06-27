 
@echo off
for /f "delims=" %%a in ('wmic OS Get localdatetime  ^| find "."') do set dt=%%a
set datestamp=%dt:~0,8%
set timestamp=%dt:~8,6%
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%
set HH=%dt:~8,2%
set Min=%dt:~10,2%
set Sec=%dt:~12,2%

set stamp=db_fab_sisec_%YYYY%_%MM%_%DD%_%HH%_%Min%_%Sec%.sql
c:
cd C:\xampp\htdocs\sisec\doc\BD\
del *.sql

C:\xampp\mysql\bin\mysqldump -u root sisec --routines > C:\xampp\htdocs\sisec\doc\BD\%stamp%
rem pause

:: Formatear la fecha y hora
set timestamp=%YYYY%_%MM%_%DD%_%HH%_%Min%_%Sec%

:: Ruta y nombre del archivo de salida
set backup_file=C:\backup\src_sisec_fab_%timestamp%.zip

:: Ruta de los archivos y carpetas a incluir
set source_path=C:\xampp\htdocs\sisec\*

echo %source_path%
echo %backup_file%
cd C:\"Program Files"\7-Zip
7z a -tzip -r "%backup_file%" "%source_path%"

