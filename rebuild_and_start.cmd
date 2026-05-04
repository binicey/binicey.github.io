@echo off
echo Stopping existing Docker containers...
docker compose down

echo Cleaning up old build files and cache...
rmdir /s /q _site 2>nul
rmdir /s /q .jekyll-cache 2>nul

echo Starting Docker containers...
docker compose up -d

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Docker compose failed to build or start.
    pause
    exit /b %errorlevel%
)

echo.
echo Server is starting. Showing logs (Press Ctrl+C to stop viewing logs, server will keep running in background)...
echo Site will be available at: http://localhost:4000
echo.

docker compose logs -f jekyll

echo.
echo Container log view ended or container stopped abruptly.
pause
