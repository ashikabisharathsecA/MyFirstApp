@echo off
echo Checking for process using port 8081...

for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8081') do (
    echo Killing process ID %%a on port 8081...
    taskkill /PID %%a /F
)

echo Starting Metro bundler...
npx react-native start --reset-cache

pause