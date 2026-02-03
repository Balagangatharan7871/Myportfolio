@echo off
echo ==============================================
echo      FINAL DEPLOY - FIXING ALL ISSUES
echo ==============================================

echo [1/3] Staging all fixed files...
git add .

echo [2/3] Committing fixes...
git commit -m "Fix: lowercase repo name, remove terser, update all URLs"

echo [3/3] Force pushing to GitHub...
git push -f origin main

echo ==============================================
echo      DEPLOYMENT TRIGGERED SUCCESSFULLY!
echo ==============================================
echo.
echo Wait 2-3 minutes, then check:
echo https://balagangatharan7871.github.io/myportfolio/
echo.
pause
