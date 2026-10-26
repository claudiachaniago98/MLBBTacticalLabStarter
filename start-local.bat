@echo off
cd /d %~dp0
where py >nul 2>nul && (start http://localhost:8000 & py -m http.server 8000 & exit /b)
where python >nul 2>nul && (start http://localhost:8000 & python -m http.server 8000 & exit /b)
echo Python belum terpasang. Anda tetap bisa upload folder ini langsung ke Cloudflare Pages/GitHub Pages.
pause
