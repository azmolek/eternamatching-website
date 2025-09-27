import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://eternamatcher.com',
  output: 'static',
  build: {
    format: 'directory'  // Clean URLs on Cloudflare
  }
});
