@Echo off
chcp 1251
cls
:m1
cls
Echo Меню хотспота:
Echo.
Echo 1 - Создать точку Wi-Fi
Echo 2 - Начать раздачу
Echo 3 - Остановить раздачу
Echo 4 - Проверка состояния хотспота
Echo 5 - [Force] Закрытие (и программы и хотспота)
Echo 6 - Выход из программы
echo.
Set /p choice="Что сделать: "
if not defined choice goto m1
if "%choice%"=="1" (netsh wlan set hostednetwork mode=allow ssid=hotspot key=15987463.0)
if "%choice%"=="2" (netsh wlan start hostednetwork&&pause >nul)
if "%choice%"=="3" (netsh wlan stop hostednetwork&&pause >nul)
if "%choice%"=="4" (netsh wlan show hostednetwork&&pause >nul)
if "%choice%"=="5" (netsh wlan stop hostednetwork&&exit)
if "%choice%"=="6" (exit)
goto m1
pause >nul