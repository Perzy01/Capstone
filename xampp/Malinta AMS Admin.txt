@echo off
cd xampp

echo Checking if Apache is running...
tasklist /FI "IMAGENAME eq httpd.exe" | find /I "httpd.exe" >nul
if errorlevel 1 (
    echo Starting Apache...
    start "" apache_start.bat
) else (
    echo Apache is already running.
)

echo Checking if MySQL is running...
tasklist /FI "IMAGENAME eq mysqld.exe" | find /I "mysqld.exe" >nul
if errorlevel 1 (
    echo Starting MySQL...
    start "" mysql_start.bat
) else (
    echo MySQL is already running.
)

rem Wait for services to initialize
timeout /t 5 /nobreak > NUL

rem Open your app in the default browser
start http://localhost/capstone/login.php
