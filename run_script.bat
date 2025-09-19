@echo off
REM This batch file runs script.py

REM Check if Python is installed
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed or not in PATH.
    pause
    exit /b
)

REM Run the Python script
python "%~dp0shell.py"

REM Pause so you can see the output
pause
