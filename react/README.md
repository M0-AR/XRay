# XRay React 18 Edition

A routed React application built with Create React App, React Router, Bootstrap 5, Redux Toolkit and four chart libraries. This is the component-based edition of the XRay healthcare dashboard kit.

- React 18.2
- React Router 6
- Bootstrap 5.3
- Redux Toolkit
- 73 view files
- ApexCharts, Chart.js, ECharts and amCharts

## Requirements

- Node.js 18 or newer (20 LTS recommended)
- npm 9 or newer

## Run locally

```bash
cd react
npm install
npm start
```

The development server opens at http://localhost:3000.

The first install downloads the full charting and calendar dependency set, so it can take a few minutes.

## Production build

```bash
npm run build
```

The static build is written to `react/build/`. Serve that folder with any static server, for example:

```bash
npx serve -s build
```

## Tests

```bash
npm test
```

## Where things live

| Path | Contents |
| --- | --- |
| `src/index.js` | Application entry and route table |
| `src/layouts/` | Page shells, sidebar and header |
| `src/views/` | Dashboard, app, auth and utility screens |
| `src/components/` | Shared cards, charts, tables and form pieces |
| `src/store/` | Redux Toolkit store |
| `src/assets/` | Sass, fonts, images and vendor assets |

## Connecting real data

The edition ships with local demo data. Views read from the store and component props; replace those sources with your API client at the view or store boundary. No backend code is included.

## Deployment

Any static host works after `npm run build`. See [Deployment](../docs/DEPLOYMENT.md) for Nginx, Docker and GitHub Pages notes. The included Docker image serves the HTML edition, not this React build; point your own image at `react/build/`.

## License

Source-available template, all rights reserved. See [LICENSE](../LICENSE). A commercial license is required to resell or redistribute the source.
