import { defineConfig } from 'vite'
import tailwindcss from '@tailwindcss/vite'

// GitHub Pages Configuration
// If deploying to https://username.github.io/ → use base: '/'
// If deploying to https://username.github.io/repo-name/ → use base: '/repo-name/'
export default defineConfig({
    plugins: [
        tailwindcss(),
    ],
    base: '/Myportfolio/', // Configured for github.com/username/Myportfolio
})
