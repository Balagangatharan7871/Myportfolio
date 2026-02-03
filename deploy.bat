@echo off
echo ==========================================
echo      AUTO-DEPLOYING TO GITHUB PAGES
echo ==========================================

echo [1/3] Staging fixed configuration...
git add vite.config.js

echo [2/3] Finishing merge...
:: This handles the "continue rebase" automatically
git rebase --continue || echo Rebase already finished or checks failed, trying to continue...

echo [3/3] Pushing to GitHub...
git push origin main

echo ==========================================
echo      SUCCESS! Deployment Triggered
echo ==========================================
echo Your site will be live in 2-3 minutes at:
echo https://balagangatharan7871.github.io/Myportfolio/
pause
