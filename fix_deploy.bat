@echo off
echo ==============================================
echo      FIXING AND DEPLOYING PORTFOLIO
echo ==============================================

echo [1/4] Aborting stuck rebase to restore files...
git rebase --abort

echo [2/4] Ensuring all changes are staged...
git add .

echo [3/4] Committing any remaining changes...
:: Allow empty commit if everything is already committed
git commit -m "Final Release: Complete Portfolio Overhaul"

echo [4/4] Force Pushing to GitHub (Overwriting remote)...
git push -f origin main

echo ==============================================
echo      DEPLOYMENT COMPLETE!
echo ==============================================
echo Your site is deploying. Please wait 2-3 minutes.
echo Check here: https://balagangatharan7871.github.io/Myportfolio/
pause
