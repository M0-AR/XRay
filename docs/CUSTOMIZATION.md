# Customisation

This guide covers the changes most projects make first. Keep a copy of the original files so you can compare.

## Branding

### Logo

| Edition | Files |
| --- | --- |
| HTML | `html/images/logo.png`, `logo-white.png`, `logo-full2.png`, `logo1.png` |
| React | `react/src/assets/images/logo.png`, `logo-white.png`, `logo-full2.png`, `logo1.png` |
| Vue | `vue/src/assets/images/logo.png`, `logo-white.png`, `logo-full2.png`, `logo1.png` |

Keep the file names and approximate dimensions, then replace the files. Update `html/images/favicon.ico` if you have a favicon.

### Product name and copy

Search for the product name in each edition and replace the visible labels, page titles and metadata. Do not leave demo hospital names or sample clinician names in a production build.

## Colours and typography

| Edition | Stylesheets |
| --- | --- |
| HTML | `html/css/style.css`, `html/css/developer.css`, `html/css/typography.css` |
| React | `react/src/assets/scss/style.scss` and `react/src/assets/css/developer.css` |
| Vue | `vue/src/assets/css/style.css`, `vue/src/assets/css/developer.css` |

Search for the primary colour value and replace it consistently. Chart colours are often defined separately in page scripts or chart configuration arrays; update those as well.

For fonts, replace the font import and the font-family declarations in the stylesheets. If you self-host fonts, add the font files to the edition's asset folder and update the `@font-face` rules.

## Navigation

- **HTML:** every page contains its own sidebar and header markup. Edit the pages you keep, or generate the sidebar from a shared template before deployment. The mobile menu is initialized in `html/js/custom.js`.
- **React:** sidebar menu data lives in `react/src/components/partials/SidebarStyle/sidebar-menu.js`. Routes are registered in `react/src/router/`.
- **Vue:** the main layout is `vue/src/layouts/Layout1.vue`; routes are in `vue/src/router/index.js`.

After changing navigation, click every link. Dead menu entries are the most common launch defect in templates.

## Add a page

### HTML

1. Copy a simple page such as `html/blank-page.html`.
2. Keep the `css/` and `js/` references and the sidebar/header structure.
3. Change the title and content.
4. Add a sidebar link.
5. Verify the page at desktop and phone widths.

### React

1. Add a view under `react/src/views/`.
2. Register it in the relevant router file under `react/src/router/`.
3. Add the sidebar entry.
4. Check the route directly and after a refresh.

### Vue

1. Add a view under `vue/src/views/`.
2. Add a route in `vue/src/router/index.js`.
3. Add the sidebar entry in `vue/src/layouts/Layout1.vue`.
4. Check the route directly and after a refresh.

## Replace demo data

Demo data lives in markup, component state and chart configuration. Replace it at the source:

- **HTML:** edit the tables, lists and chart scripts in the page, or move the data into your own API calls.
- **React:** replace data in the view or component, or connect a data layer to the existing props.
- **Vue:** replace data in the view component or Pinia store.

Never place real patient data in a front-end repository, a demo build, browser storage or a URL.

## RTL and languages

- All editions include `bootstrap.rtl.min.css` and `style-rtl.css`.
- The HTML and Vue layouts include a layout-level RTL switch.
- Vue locale files are in `vue/src/locales/` (`ar`, `chi`, `en`, `fr`, `gr`, `hi`, `sp`). Add a locale file and register it in `vue/src/i18n.js`.
- The HTML and React editions need your own translation layer for multilingual content.

RTL layout support does not translate clinical content. Have native speakers and clinicians review labels, units, dates and safety-critical text.

## Remove what you do not need

1. Delete unused pages and their sidebar links.
2. Remove unused chart and icon libraries from the stylesheets and scripts.
3. Remove unused images and fonts.
4. Re-run the site and check every remaining link.
5. Measure the result with Lighthouse and a real phone.

## Customisation checklist

- [ ] Logo and favicon replaced.
- [ ] Product name, page titles and metadata updated.
- [ ] Primary colour and typography updated in every edition you ship.
- [ ] Navigation contains no dead links.
- [ ] Demo names, numbers and hospital labels removed.
- [ ] Unused pages and libraries removed.
- [ ] RTL and translated content reviewed if applicable.
- [ ] Every form, table, modal and chart checked at phone width.
- [ ] Error, empty and loading states reviewed.
