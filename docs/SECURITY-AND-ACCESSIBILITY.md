# Security, privacy and accessibility

XRay is a front-end interface template for healthcare products. This document explains what it does and does not provide, and what to verify before launch.

## Security model

- **No backend.** There is no database, API, session service or server-side code.
- **No patient data.** All names, numbers, reports and appointments are demo content.
- **No authentication.** The sign-in, sign-up, recovery and lock screens are interface demos. They do not authenticate or authorise anyone.
- **No compliance certification.** The project does not claim HIPAA, GDPR, WCAG or any other certification.

## Before production

1. Replace demo data and remove unused pages and sample identities.
2. Add real authentication, session handling and role-based authorisation.
3. Enforce least privilege for every role and every action.
4. Add audit logging for access to clinical and financial data.
5. Encrypt data in transit and at rest; define retention and deletion policies.
6. Add consent and privacy notices for each jurisdiction you operate in.
7. Threat-model the front end: XSS, unsafe HTML injection, insecure storage, third-party scripts and supply-chain risk.
8. Review every dependency licence with your legal team.
9. Remove analytics, fonts or scripts that send data to third parties without approval.
10. Never store patient data in `localStorage`, `sessionStorage`, URLs or client-side logs.

## Clinical safety

- Labels, units, thresholds, alerts and colour-coded states must be reviewed by clinicians.
- Do not rely on colour alone to communicate risk.
- Test empty, error, slow and offline states.
- Provide a clear path from every alert to the underlying information and the next action.
- Do not present demo values as clinical guidance.

## Accessibility baseline

The templates include:

- Semantic Bootstrap markup and visible focus styles.
- Keyboard-operable menus, forms and modal patterns.
- RTL stylesheets in all editions, with RTL switches in the HTML and Vue layouts.
- Reduced-motion support in the interactive preview.
- Responsive layouts down to phone width.

Before launch, audit:

- Contrast in default, hover, focus, disabled and error states.
- Keyboard-only navigation and focus order.
- Screen-reader labels for icons, charts, status indicators and form errors.
- Touch target sizes and use under time pressure.
- Charts that provide labels, patterns or tables in addition to colour.
- Zoom to 200% without loss of function.
- Form errors that are announced, specific and recoverable.
- Motion that respects reduced-motion preferences.

Automated tools such as axe and Lighthouse are a starting point, not a substitute for testing with assistive technology and real users.

## Reporting a vulnerability

Use the repository's **Security** tab to open a private advisory. Do not publish exploit details in a public issue. Include the affected edition, browser, steps to reproduce and impact.

## Reporting an accessibility issue

Open a normal issue with the page, browser, assistive technology and the barrier you encountered. Accessibility reports are treated as product defects, not feature requests.
