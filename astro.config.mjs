import { defineConfig } from 'astro/config';

export default defineConfig({
  site: 'https://eternamatching.com',
  output: 'static',
  build: {
    format: 'directory'  // Clean URLs on Cloudflare
  }
});
