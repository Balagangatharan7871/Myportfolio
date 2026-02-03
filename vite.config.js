import { defineConfig } from 'vite'
import tailwindcss from '@tailwindcss/vite'
import { resolve } from 'path'

// GitHub Pages Configuration
// If deploying to https://username.github.io/ → use base: '/'
// If deploying to https://username.github.io/repo-name/ → use base: '/repo-name/'
export default defineConfig({
    plugins: [
        tailwindcss(),
    ],
    base: '/Myportfolio/', // Configured for github.com/username/Myportfolio
    build: {
        rollupOptions: {
            input: {
                main: resolve(__dirname, 'index.html'),
                health: resolve(__dirname, 'case-study-health.html'),
                agency: resolve(__dirname, 'case-study-agency.html'),
                dental: resolve(__dirname, 'case-study-dental.html'),
            }
        },
        minify: 'terser',
        cssMinify: true,
        assetsInlineLimit: 4096,
        reportCompressedSize: true
    }
})

