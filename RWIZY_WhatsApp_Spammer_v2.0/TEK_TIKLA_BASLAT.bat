@echo off
chcp 65001 >nul
title RWIZY WhatsApp Spammer v2.0 - Başlatıcı
color 0b
cls
echo =======================================================================
echo       🌸 RWIZY WhatsApp Spammer v2.0 (Senpai Edition) 🌸
echo =======================================================================
echo.
echo [*] Sistem ve ortam kontrolleri yapılıyor...
echo.

set "FF_FOUND=0"
if exist "%ProgramFiles%\Mozilla Firefox\firefox.exe" set "FF_FOUND=1"
if exist "%ProgramFiles(x86)%\Mozilla Firefox\firefox.exe" set "FF_FOUND=1"
if exist "%LOCALAPPDATA%\Mozilla Firefox\firefox.exe" set "FF_FOUND=1"

where firefox.exe >nul 2>&1
if not errorlevel 1 set "FF_FOUND=1"

if "%FF_FOUND%"=="1" (
    echo [✓] Mozilla Firefox tespit edildi.
) else (
    echo [!] DIKKAT: Mozilla Firefox sisteminizde bulunamadi!
    echo     WhatsApp Web otomasyonu Firefox uzerinden calisir.
    echo.
    set /p "DL_FF=Firefox indirme sayfasini acmak ister misiniz? (E/H): "
    if /i "%DL_FF%"=="E" (
        start https://www.mozilla.org/firefox/
    )
    echo.
)

if not exist "geckodriver.exe" (
    color 0c
    echo [HATA] 'geckodriver.exe' dosyasi bulunamadi!
    echo Lutfen arsivin tum dosyalarini ayni klasore cikardiginizdan emin olun.
    pause
    exit /b
)

if not exist "RWIZY_WhatsApp_Spammer.exe" (
    color 0c
    echo [HATA] 'RWIZY_WhatsApp_Spammer.exe' bulunamadi!
    pause
    exit /b
)

echo [✓] Tum bilesenler tam ve eksiksiz!
echo.
echo [*] Program baslatiliyor, iyi eglenceler Senpai! 🚀🌸
echo.
timeout /t 1 >nul

start "" "RWIZY_WhatsApp_Spammer.exe"
exit /b
