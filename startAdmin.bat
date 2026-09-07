@echo off

:: 检查管理员权限
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 请求管理员权限...

    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: 管理员权限执行
cd /d "%~dp0"
mihomo.exe -d .
