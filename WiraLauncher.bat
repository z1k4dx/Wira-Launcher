@echo off
title Juegos by Wira



:: Crear carpeta Descargas si no existe
if not exist "Descargas" mkdir "Descargas"
color 3

:menu
cls
echo =====================================
echo    Menu de Juegos y Aplicaciones
echo =====================================
echo 1. Juegos
echo 2. Aplicaciones
echo 3. Creditos
echo 4. Salir
echo =====================================
set /p choice=Elegi una Opcion:

if %choice%==1 goto juegos
if %choice%==2 goto apps
if %choice%==3 goto creditos
if %choice%==4 goto salir



:juegos
cls
echo =====================================
echo        Juegos
echo =====================================
echo 5. Descargar CS 1.6
echo 6. Jugar CS 1.6
echo 7. Descargar Minecraft 1.8
echo 8. Jugar Minecraft 1.8
echo 9. Descargar GeometryDash
echo 10. Jugar GeometryDash
echo 99. --Volver--
echo =====================================
set /p choice=Elegi una Opcion:


if %choice%==5 goto descargarcs
if %choice%==6 goto ejecutar_cs
if %choice%==7 goto descargarmc
if %choice%==8 goto ejecutar_mc
if %choice%==9 goto descargargeometry
if %choice%==10 goto ejecutar_geometry
if %choice%==99 goto menu


:apps
cls
echo =====================================
echo        Aplicaciones
echo =====================================
echo 11. Descargar 7Zip (Extraer archivoz zip)
echo 12. Instalar 7zip
echo 13. Descargar Optimizar Pc
echo 14. Descargar Limpiar Espacio
echo 15. Iniciar Limpiar Espacio
echo 99. --Volver--
echo =====================================
set /p choice=Elegi una Opcion:


if %choice%==11 goto descargar7zip
if %choice%==12 goto ejecutar_7zip
if %choice%==13 goto descargaroptipc
if %choice%==14 goto descargarlimpiarespacio
if %choice%==15 goto ejecutar_limpiarespacio
if %choice%==99 goto menu

:: -------------Links Para Descargar-------------

:descargarlimpiarespacio
 
cls
echo Iniciando la descarga de Optimizador Pc...
curl -L --progress-bar -o "Descargas\Limpiar Espacio.rar" "https://dl.dropbox.com/scl/fi/yuf99yj6qq7nocpuswswf/Limpiar-Espacio.zip?rlkey=hluzj31crucvgvva1fumfhdt3&st=yu6rmio9&dl=0"
echo.
echo Descarga completa.
goto extraer_limpiarespacio



:descargaroptipc
 
cls
echo Iniciando la descarga de Optimizador Pc...
curl -L --progress-bar -o "Descargas\Optimizar PC V5.5.rar" "https://dl.dropbox.com/scl/fi/vuqql4z8ci44ls26oip6d/Optimizar-PC-V5.5.rar?rlkey=pmh9a745knk6p9gntkcvrlm32&st=z4714g2f&dl=0"
echo.
echo Descarga completa.
goto extraer_optipc

:descargar7zip
 
cls
echo Iniciando la descarga de 7zip...
curl -L --progress-bar -o "Descargas\7z2404-x64.exe" "https://dl.dropbox.com/scl/fi/y914cu6dxhh3v6s9xcpth/7z2404-x64.exe?rlkey=c0x312ddr7zpt2a86rbdveb7d&st=65eehtmb&dl=0"
echo.
echo Descarga completa.
goto apps


:descargarcs
 
cls
echo Iniciando la descarga de CS 1.6...
curl -L --progress-bar -o "Descargas\Cs1.6.rar" "https://dl.dropbox.com/scl/fi/kfi8934al2mqkdxjpgk2v/Cs1.6.rar?rlkey=lkhj3cj5tv80cfbtcv4kw5570&st=ck2aqbf0&dl=0"
echo.
echo Descarga completa.
goto extraer_cs

:descargarmc
 
cls
echo Iniciando la descarga de Minecraft 1.8...
curl -L --progress-bar -o "Descargas\Minecraft 1.8.9 Canaima MOD.rar" "https://dl.dropbox.com/scl/fi/n1rtrr2fkvxy59piropsi/Minecraft-1.8.9-Canaima-MOD.rar?rlkey=i58jctlv4zb6cjlzun53ay9yb&st=ljsbcfou&dl=0"
echo.
echo Descarga completa.
goto extraer_mc

:descargargeometry
cls
 
echo Iniciando la descarga de Geometry Dash...
curl -L --progress-bar -o "Descargas\GeometryDash.rar" "https://dl.dropbox.com/scl/fi/kei7k9xb21081k9u3ne2w/GeometryDash.rar?rlkey=exmbzdguerhnxxer7kirff61g&st=2b4vjbww&dl=0"
echo.
echo Descarga completa.
goto extraer_geometry
:: -------------Extraer Archivos-------------
:extraer_cs
echo Extrayendo archivo CS 1.6...
if exist "Descargas\Cs1.6.rar" (
    :: Usar WinRAR si está instalado
    if exist "C:\Program Files\WinRAR\WinRAR.exe" (
        "C:\Program Files\WinRAR\WinRAR.exe" x -o+ "Descargas\Cs1.6.rar" "Descargas\"
    ) else (
        :: Usar 7-Zip si está instalado
        if exist "C:\Program Files\7-Zip\7z.exe" (
            "C:\Program Files\7-Zip\7z.exe" x "Descargas\Cs1.6.rar" -o"Descargas\"
        ) else (
            echo No se encontró WinRAR ni 7-Zip instalados. No se puede extraer el archivo .rar.
            pause
            goto juegos
        )
    )
    echo Extraccion completa.
    del "Descargas\Cs1.6.rar"
) else (
    echo No se encontro el archivo .rar para extraer.
)
pause
goto juegos

:extraer_mc
echo Extrayendo archivo Minecraft 1.8...
if exist "Descargas\Minecraft 1.8.9 Canaima MOD.rar" (
    :: Usar WinRAR si está instalado
    if exist "C:\Program Files\WinRAR\WinRAR.exe" (
        "C:\Program Files\WinRAR\WinRAR.exe" x -o+ "Descargas\Minecraft 1.8.9 Canaima MOD.rar" "Descargas\"
    ) else (
        :: Usar 7-Zip si está instalado
        if exist "C:\Program Files\7-Zip\7z.exe" (
            "C:\Program Files\7-Zip\7z.exe" x "Descargas\Minecraft 1.8.9 Canaima MOD.rar" -o"Descargas\"
        ) else (
            echo No se encontró WinRAR ni 7-Zip instalados. No se puede extraer el archivo .rar.
            pause
            goto juegos
        )
    )
    echo Extraccion completa.
    del "Descargas\Minecraft 1.8.9 Canaima MOD.rar"
) else (
    echo No se encontro el archivo .rar para extraer.
)
pause
goto juegos


:extraer_geometry
echo Extrayendo archivo GeometryDash...
if exist "Descargas\GeometryDash.rar" (
    :: Usar WinRAR si está instalado
    if exist "C:\Program Files\WinRAR\WinRAR.exe" (
        "C:\Program Files\WinRAR\WinRAR.exe" x -o+ "Descargas\GeometryDash.rar" "Descargas\"
    ) else (
        :: Usar 7-Zip si está instalado
        if exist "C:\Program Files\7-Zip\7z.exe" (
            "C:\Program Files\7-Zip\7z.exe" x "Descargas\GeometryDash.rar" -o"Descargas\"
        ) else (
            echo No se encontró WinRAR ni 7-Zip instalados. No se puede extraer el archivo .rar.
            pause
            goto juegos
        )
    )
    echo Extraccion completa.
    del "Descargas\GeometryDash.rar"
) else (
    echo No se encontro el archivo .rar para extraer.
)
pause
goto juegos



:extraer_optipc
echo Extrayendo archivo Optimizar PC V5.5...
if exist "Descargas\Optimizar PC V5.5.rar" (
    :: Usar WinRAR si está instalado
    if exist "C:\Program Files\WinRAR\WinRAR.exe" (
        "C:\Program Files\WinRAR\WinRAR.exe" x -o+ "Descargas\Optimizar PC V5.5.rar" "Descargas\"
    ) else (
        :: Usar 7-Zip si está instalado
        if exist "C:\Program Files\7-Zip\7z.exe" (
            "C:\Program Files\7-Zip\7z.exe" x "Descargas\Optimizar PC V5.5.rar" -o"Descargas\"
        ) else (
            echo No se encontró WinRAR ni 7-Zip instalados. No se puede extraer el archivo .rar.
            pause
            goto juegos
        )
    )
    echo Extraccion completa.
    del "Descargas\Optimizar PC V5.5.rar"
) else (
    echo No se encontro el archivo .rar para extraer.
)
pause
goto apps

:extraer_limpiarespacio
echo Extrayendo archivo Limpiar Espacio...
if exist "Descargas\Limpiar Espacio.rar" (
    :: Usar WinRAR si está instalado
    if exist "C:\Program Files\WinRAR\WinRAR.exe" (
        "C:\Program Files\WinRAR\WinRAR.exe" x -o+ "Descargas\Limpiar Espacio.rar" "Descargas\"
    ) else (
        :: Usar 7-Zip si está instalado
        if exist "C:\Program Files\7-Zip\7z.exe" (
            "C:\Program Files\7-Zip\7z.exe" x "Descargas\Limpiar Espacio.rar" -o"Descargas\"
        ) else (
            echo No se encontró WinRAR ni 7-Zip instalados. No se puede extraer el archivo .rar.
            pause
            goto juegos
        )
    )
    echo Extraccion completa.
    del "Descargas\Limpiar Espacio.rar"
) else (
    echo No se encontro el archivo .rar para extraer.
)
pause
goto apps

:: -------------------------------------------

:: -------------Ejecutar Archivos-------------
:ejecutar_cs
echo Iniciando Counter-Strike 1.6...
if exist "Descargas\Cs1.6\cs.exe" (
    start "" "Descargas\Cs1.6\cs.exe" -game cstrike -steam -nocache -noasync -nosteamcontroller -nojoy -noipx -noforcemspd -noforcemaccel -noforcemparms
) else (
    echo No se encontro el ejecutable de CS 1.6. Asegurese de que el juego esta correctamente instalado.
)
pause
goto juegos
exit
:: -------------------------------------------
:ejecutar_mc
echo Iniciando Minecraft 1.8...
if exist "Descargas\Minecraft 1.8.9 Canaima MOD\Minecraft.bat" (
    start "" "Descargas\Minecraft 1.8.9 Canaima MOD\Minecraft.bat"
) else (
    echo No se encontro el ejecutable de Minecraft 1.8 Asegurese de que el juego esta correctamente instalado.
)
pause
goto juegos
exit
:: -------------------------------------------
:ejecutar_geometry
echo Geometry Dash...
if exist "Descargas\GeometryDash\2-Geometry Dash OpenGL.bat" (
    start "" "Descargas\GeometryDash\2-Geometry Dash OpenGL.bat"
) else (
    echo No se encontro el ejecutable de Geometry Dash Asegurese de que el juego esta correctamente instalado.
)
pause
goto juegos
exit
:: ----------------------------------------
:ejecutar_7zip
echo 7zip...
if exist "Descargas\7z2404-x64.exe" (
    start "" "Descargas\7z2404-x64.exe"
) else (
    echo No se encontro el ejecutable de 7z2404-x64 Asegurese de que el juego esta correctamente instalado.
)
pause
goto apps
exit
:: -------------------------------------------
:ejecutar_limpiarespacio
echo Limpiar Espacio...
if exist "Descargas\Limpiar Espacio\DeepClean.exe" (
    start "" "Descargas\Limpiar Espacio\DeepClean.exe"
) else (
    echo No se encontro el ejecutable de DeepClean.exe Asegurese de que el juego esta correctamente instalado.
)
pause
goto apps
exit
:: -------------------------------------------

:salir
echo Saliendo...
pause
exit

:creditos
cls
echo =====================================
echo                Creditos
echo =====================================
echo Aplicacion Creda por wira 
echo =====================================
echo Esta app esta pensada para que los pibes
echo puedan jugar tranki en la escuela
echo =====================================


pause
goto menu

