@echo off

REM Check the current time
for /f "tokens=1-4 delims=:., " %%a in ('time /t') do (
    set hour=%%a
    set min=%%b
)

REM Compare the current time with 12:00 AM
if %hour%==12 (
    if %min%==00 (
        REM Enable the proxy
        netsh winhttp set proxy proxy-server="<172.16.1.1>:<7675>"
    )
)