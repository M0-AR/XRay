# XRay Vue 3 Edition

A Vue 3 application built with Vue CLI 5, Vue Router, Pinia, Bootstrap 5 and four chart libraries. This edition keeps the options API and a familiar Vue CLI workflow.

- Vue 3.3
- Vue Router 4
- Pinia
- Bootstrap 5.2
- 80 view files
- 7 locale files (Arabic, Chinese, English, French, Greek, Hindi, Spanish)

## Requirements

- Node.js 18 or newer (20 LTS recommended)
- npm 9 or newer

## Run locally

```bash
cd vue
npm install
npm run serve
```

The development server opens at http://localhost:8080.

## Production build

```bash
npm run build
```

The static build is written to `vue/dist/`. Serve that folder with any static server, for example:

```bash
npx serve -s dist
```

## Lint

```bash
npm run lint
npm run lint:fix
```

## Where things live

| Path | Contents |
| --- | --- |
| `src/main.js` | Application entry |
| `src/router/index.js` | Route table |
| `src/layouts/` | Page shells, sidebar and header |
| `src/views/` | Dashboard, app, auth and utility screens |
| `src/components/` | Shared cards, charts, tables and form pieces |
| `src/locales/` | Translation files |
| `src/FackApi/` | Local demo data used by the screens |

## Connecting real data

The edition ships with local demo data in `src/FackApi/`. Replace those calls with your API client, or point the store actions at your endpoints. No backend code is included.

## Internationalization

Translations live in `src/locales/`. The UI ships with a language switcher and RTL styles for Arabic and Hebrew. Add a locale JSON file and register it in `src/i18n.js` to extend the set.

## Deployment

Any static host works after `npm run build`. See [Deployment](../docs/DEPLOYMENT.md) for Nginx, Docker and GitHub Pages notes. The included Docker image serves the HTML edition, not this Vue build; point your own image at `vue/dist/`.

## License

Source-available template, all rights reserved. See [LICENSE](../LICENSE). A commercial license is required to resell or redistribute the source.
