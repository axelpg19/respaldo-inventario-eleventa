@echo off
setlocal enabledelayedexpansion

rem === RUTA BASE ===
set base=%USERPROFILE%\Documents\Respaldos Eleventa\Inventario

rem === FECHA SEGURA ===
for /f %%i in ('wmic os get LocalDateTime ^| find "."') do set dt=%%i
set anio=%dt:~0,4%
set mes=%dt:~4,2%
set dia=%dt:~6,2%
set hora=%dt:~8,2%:%dt:~10,2%

rem === NOMBRE DEL MES ===
set mesNombre=
if %mes%==01 set mesNombre=01_Enero
if %mes%==02 set mesNombre=02_Febrero
if %mes%==03 set mesNombre=03_Marzo
if %mes%==04 set mesNombre=04_Abril
if %mes%==05 set mesNombre=05_Mayo
if %mes%==06 set mesNombre=06_Junio
if %mes%==07 set mesNombre=07_Julio
if %mes%==08 set mesNombre=08_Agosto
if %mes%==09 set mesNombre=09_Septiembre
if %mes%==10 set mesNombre=10_Octubre
if %mes%==11 set mesNombre=11_Noviembre
if %mes%==12 set mesNombre=12_Diciembre

rem === CARPETA DEL AÑO ===
set carpetaAnio=%base%\%anio%
if not exist "%carpetaAnio%" mkdir "%carpetaAnio%"

rem === BITÁCORA POR AÑO ===
set log=%carpetaAnio%\bitacora_%anio%.txt

rem === DESTINO FINAL ===
set destino=%carpetaAnio%\%mesNombre%
if not exist "%destino%" mkdir "%destino%"

rem === BUSCAR ARCHIVO MÁS RECIENTE ===
set encontrado=0
for /f "delims=" %%f in ('dir "%base%\*.xls*" /b /o-d') do (
    set archivo=%%f
    set encontrado=1
    goto procesar
)

if %encontrado%==0 (
    echo [%anio%-%mes%-%dia% %hora%] No se encontraron archivos nuevos >> "%log%"
    exit
)

:procesar
set nuevo=Inventario_%anio%-%mes%-%dia%.xlsx
move "%base%\%archivo%" "%destino%\%nuevo%" >nul

echo [%anio%-%mes%-%dia% %hora%] Respaldo creado: %mesNombre%\%nuevo% >> "%log%"

exit