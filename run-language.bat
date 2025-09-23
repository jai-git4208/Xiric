@echo off
REM run_shell.bat - Runs shell.py with a welcome message

REM Enable ANSI escape codes (Windows 10+)
for /f "delims=" %%A in ('echo prompt $E ^| cmd') do set "ESC=%%A"

REM Function to print colored text
:color_echo
REM %1 = color code, %2 = message
echo %ESC%[%1m%2%ESC%[0m
goto :eof

REM Check if Python is installed
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo ❌ Python is not installed or not in PATH.
    pause
    exit /b
)

REM Print welcome message
call :color_echo 1;36 "====================================="
call :color_echo 1;35 "     Welcome to Xiric"
call :color_echo 0;33 "  Made with ❤ by Jaimin"
call :color_echo 1;36 "====================================="
echo.

REM Run the Python script (same folder as this batch file)
python "%~dp0shell.py"

REM Pause so the user can see output
pause
