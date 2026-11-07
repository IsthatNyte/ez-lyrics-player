@echo off
cd /d "C:\Users\dryde\ezlyrics_player"
python app.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Application exited with error code %ERRORLEVEL%.
    pause
)
