# GitHub Pages Deployment Guide

## Quick Setup

1. **Push your code to GitHub**:
   ```bash
   git add .
   git commit -m "Setup GitHub Pages deployment"
   git push origin main
   ```

2. **Enable GitHub Pages in your repository**:
   - Go to your repository on GitHub
   - Click **Settings** → **Pages** (in the left sidebar)
   - Under **Source**, select: **GitHub Actions**
   - Save the settings

3. **Configure the base path** (if needed):
   - If your repo URL is `github.com/username/portfolio`:
     - Open `vite.config.js`
     - Change `base: '/'` to `base: '/portfolio/'`
     - Commit and push the change
   
   - If your repo is `username.github.io`:
     - Keep `base: '/'` as is (already configured)

4. **Wait for deployment**:
   - Go to the **Actions** tab in your GitHub repository
   - Watch the deployment workflow run
   - Once complete, your site will be live!

## Your Site URL

- **Repository deployment**: `https://username.github.io/repository-name/`
- **User site**: `https://username.github.io/`

## Troubleshooting

### Assets not loading (CSS/JS broken)
- Check the `base` path in `vite.config.js` matches your repository name
- Rebuild and push: `git add . && git commit -m "Fix base path" && git push`

### Workflow not running
- Make sure you enabled GitHub Actions as the Pages source
- Check the **Actions** tab for any errors

### 404 Error
- Ensure the workflow completed successfully
- Check that `dist` folder was uploaded in the Actions logs

## Local Testing

Before pushing, test the build locally:

```bash
cd "d:\my portfolio - new"
npm run build
npm run preview
```

This will show you exactly how it will look on GitHub Pages.
