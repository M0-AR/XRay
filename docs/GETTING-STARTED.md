# Getting started

This guide takes you from a fresh clone to a running dashboard. No healthcare background and no backend are required.

## What you get

| Edition | Folder | Entry point | Pages |
| --- | --- | --- | --- |
| HTML | `html/` | `html/index.html` | 72 top-level pages, plus 3 email screens in `html/app/` |
| React | `react/` | `src/App.js` | 73 view files |
| Vue | `vue/` | `src/App.vue` | 80 view components |

All three editions use demo data. There is no database, API key or server-side setup.

## Requirements

- **HTML:** Python 3 or any static file server. No Node.js needed.
- **React and Vue:** Node.js 18 or 20 LTS and npm.
- A modern browser.

If you use a very new Node.js release and an older build tool fails, switch to Node 18 or 20 LTS rather than changing the project's dependencies.

## Clone the repository

```bash
git clone https://github.com/M0-AR/XRay.git
cd XRay
```

## Option 1: HTML edition

From the repository root:

```bash
python3 -m http.server 8000
```

Open <http://localhost:8000/html/index.html>.

Why a server? Browsers restrict some scripts, maps and chart requests on `file://`. Serving over HTTP avoids those problems.

The sidebar links to every page group: dashboards, charts, forms, tables, icons, UI elements, apps, authentication and utility pages.

### Try these first

1. Open the five dashboards: `index.html`, `dashboard-1.html` to `dashboard-4.html`.
2. Resize the browser to phone width.
3. Use the RTL switch in the header.
4. Open the data table and the form wizard.
5. Open the email app from `html/app/index.html`.

## Option 2: React edition

```bash
cd react
npm install
npm start
```

Open <http://localhost:3000>.

Production build:

```bash
npm run build
```

The output is written to `react/build/`.

## Option 3: Vue edition

```bash
cd vue
npm install
npm run serve
```

Open <http://localhost:8080>.

Production build:

```bash
npm run build
```

The output is written to `vue/dist/`.

Run only one development server at a time if both want port 8080.

## Your first edit

In `html/index.html`, search for a visible heading or the clinic name, replace it, save, and refresh. That is the same loop for every screen.

For a colour change, edit `html/css/style.css`. For the logo, replace `html/images/logo.png`. For navigation, edit the sidebar markup in the page.

## Which edition should I use?

- Need the fastest working demo? Use **HTML**.
- Building a React product? Use **React**.
- Building a Vue product? Use **Vue**.
- Prototyping and unsure? Use **HTML** first, then rebuild the screens you need in your framework.

The editions share a design language but are separate implementations. Small differences exist; verify the screens you plan to ship.

## Common problems

| Problem | Cause | Fix |
| --- | --- | --- |
| Charts or maps are blank | Opened with `file://` | Serve over HTTP |
| Styles missing | Opened a page outside its folder | Start at `html/index.html` |
| `npm install` fails | Node version too new for the toolchain | Use Node 18 or 20 LTS |
| Port already in use | Another dev server is running | Stop it or choose another port |
| React route 404 after refresh | Host has no SPA rewrite | Rewrite unknown paths to `index.html` |

## Next steps

- [Customisation](CUSTOMIZATION.md)
- [Deployment](DEPLOYMENT.md)
- [FAQ](FAQ.md)
- [Security and accessibility](SECURITY-AND-ACCESSIBILITY.md)
