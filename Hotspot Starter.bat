@Echo off
chcp 1251
cls
:m1
cls
Echo ���� ��������:
Echo.
Echo 1 - ������� ����� Wi-Fi
Echo 2 - ������ �������
Echo 3 - ���������� �������
Echo 4 - �������� ��������� ��������
Echo 5 - [Force] �������� (� ��������� � ��������)
Echo 6 - ����� �� ���������
echo.
Set /p choice="��� �������: "
if not defined choice goto m1
if "%choice%"=="1" (netsh wlan set hostednetwork mode=allow ssid=hotspot key=15987463.0)
if "%choice%"=="2" (netsh wlan start hostednetwork&&pause >nul)
if "%choice%"=="3" (netsh wlan stop hostednetwork&&pause >nul)
if "%choice%"=="4" (netsh wlan show hostednetwork&&pause >nul)
if "%choice%"=="5" (netsh wlan stop hostednetwork&&exit)
if "%choice%"=="6" (exit)
goto m1
pause >nul