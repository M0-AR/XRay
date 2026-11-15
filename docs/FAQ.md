# FAQ

## Is XRay a hospital information system or an EHR?

No. It is an interface template. It has no backend, no database and no clinical logic. It gives you the screens; you connect the system behind them.

## Can I use XRay in production?

Production use requires a commercial licence. The public repository is for evaluation. Open a licensing issue on GitHub for terms.

## Is there a free version?

The repository itself is free to view, download and evaluate for non-commercial learning and prototyping. Production, client delivery and commercial use need a written licence.

## Do I need a backend to run the demo?

No. All editions run with demo data. A static file server is enough for the HTML edition.

## Which edition has the most pages?

The HTML edition: 72 top-level pages, plus three email screens in `html/app/` — 75 HTML screens in total. The React edition has 73 view files and the Vue edition has 80 view components covering the same product areas.

## Are the three editions identical?

No. They share a visual language and page set, but they are separate implementations. Component structure, routing and small visual details differ. Verify the screens you plan to ship in the edition you will use.

## Does it support Arabic and RTL?

The layout does: all editions include Bootstrap RTL and `style-rtl.css`, and the HTML and Vue layouts include an RTL switch. Vue also ships seven locale files. Translated clinical content still needs review by native speakers and clinicians.

## Why are the numbers in the charts not real?

Because there is no backend. The numbers are sample data that demonstrate layout and chart behaviour. Replace them with your own API responses.

## Can I remove the XRay branding?

Under a commercial licence you can adapt the interface according to the written terms. The evaluation copy keeps its notices.

## Is it accessible?

It provides accessibility foundations: semantic markup, focus styles, keyboard-friendly controls, RTL support and reduced-motion handling in the preview. It is not certified, and no template can guarantee conformance for your finished product. Audit your build with real users and assistive technology.

## Is it HIPAA or GDPR compliant?

No claim is made. Compliance depends on your hosting, contracts, data flows, policies and processes. The template contains no backend and no real patient data, so it cannot make a product compliant by itself.

## Why does the preview have a game?

The 3D game is a short, optional teaching device about clinical decision-making. It is part of the presentation layer, not the product UI, and can be removed without affecting the dashboards.

## How do I report a bug or security issue?

Use the issue templates for bugs and features. For security, use the repository's Security tab and open a private advisory instead of a public issue.

## How do I request a feature or a licence?

Open an issue. For licensing, say that it is a licensing request so it can be routed correctly.
