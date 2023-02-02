@echo off
:loop
REM Refresh the internet connection
ipconfig /release
ipconfig /renew

REM Wait for 10 minutes
timeout /t 600

REM Go back to the start of the loop
goto loop
