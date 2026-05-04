Write-Host "Stopping existing Docker containers..." -ForegroundColor Cyan
docker compose down

Write-Host "Cleaning up old build files and cache..." -ForegroundColor Cyan
Remove-Item -Recurse -Force _site -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force .jekyll-cache -ErrorAction SilentlyContinue

Write-Host "Building and starting Docker containers..." -ForegroundColor Cyan
docker compose up --build -d

Write-Host "Server is starting. Showing logs (Press Ctrl+C to stop viewing logs, server will keep running in background)..." -ForegroundColor Green
Write-Host "Site will be available at: http://localhost:4000" -ForegroundColor Green
docker compose logs -f jekyll
