# Deployment

XRay is a static front end. The HTML edition can be hosted anywhere that serves files. React and Vue need a production build and an SPA rewrite.

## GitHub Pages

This repository is prepared for Pages deployment from the `main` branch root.

| URL | What it serves |
| --- | --- |
| `/` | Styled redirect to `preview.html` |
| `/preview.html` | Interactive presentation and learning page |
| `/html/index.html` | Doctor dashboard and the HTML demo |
| `/html/dashboard-1.html` to `/html/dashboard-4.html` | The other dashboards |

The `.nojekyll` file must remain in the repository root. Without it, some folders and asset paths may not be served correctly.

To enable Pages with the GitHub CLI:

```bash
gh api -X POST repos/M0-AR/XRay/pages \
  -f 'source[branch]=main' \
  -f 'source[path]=/'
```

Then check the deployment:

```bash
gh api repos/M0-AR/XRay/pages
```

If Pages is already enabled, use `PUT` instead of `POST`.

## Any static host

Upload the `html/` folder to Netlify, Vercel, Cloudflare Pages, S3, nginx or a similar host.

- Entry point: `html/index.html`
- Build command: none
- Output directory: `html`

Keep the folder structure intact so `css/`, `js/`, `images/` and chart assets resolve.

## React and Vue

Build first:

```bash
cd react && npm run build   # output: react/build/
cd vue && npm run build     # output: vue/dist/
```

Both are single-page applications. Rewrite unknown paths to `index.html`, otherwise refreshing a nested route returns a 404.

### nginx example

```nginx
server {
    listen 80;
    server_name example.com;
    root /var/www/xray;
    index index.html;

    location / {
        try_files $uri $uri/ /index.html;
    }
}
```

### Netlify example

Create `public/_redirects`:

```text
/* /index.html 200
```

### Vercel example

Add a rewrite in `vercel.json`:

```json
{
  "rewrites": [{ "source": "/(.*)", "destination": "/index.html" }]
}
```

## Docker

The included image serves the interactive preview and the HTML edition. It does not build React or Vue.

```bash
docker build -t xray .
docker run --rm -p 8080:80 xray
```

Open <http://localhost:8080/> and <http://localhost:8080/html/index.html>.

The image is also published by the `docker-publish.yml` workflow on a version tag, if package permissions are enabled:

```text
ghcr.io/m0-ar/xray-demo
```

## Caching

Static assets can be cached for a week or longer. HTML should be revalidated so users see new deployments.

```nginx
location ~* \.(css|js|png|jpg|jpeg|gif|webp|svg|ico|woff2?)$ {
    expires 7d;
    add_header Cache-Control "public";
}
```

If you use hashed filenames, cache them for a year. The included HTML edition does not hash filenames, so keep HTML cache lifetimes short.

## Post-deployment checklist

- [ ] `/` redirects to `preview.html`.
- [ ] `/preview.html` loads with no console errors.
- [ ] All five dashboards open from the live demo.
- [ ] Demo iframes and internal links resolve under the deployed path.
- [ ] Phone layout has no horizontal scrolling.
- [ ] 404 page is served for unknown paths.
- [ ] React and Vue route refreshes work with the SPA rewrite.
- [ ] HTTPS is enabled.
- [ ] Analytics and third-party scripts are reviewed before launch.
- [ ] No demo data is mistaken for real patient information.
