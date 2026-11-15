FROM nginx:1.27-alpine

LABEL org.opencontainers.image.title="XRay Healthcare Dashboard Suite"
LABEL org.opencontainers.image.description="Static demo of the XRay healthcare dashboard suite: preview page and 72-page HTML edition."
LABEL org.opencontainers.image.source="https://github.com/M0-AR/XRay"
LABEL org.opencontainers.image.licenses="Proprietary"

COPY docker/nginx.conf /etc/nginx/conf.d/default.conf

COPY preview.html index.html 404.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
COPY html /usr/share/nginx/html/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
  CMD wget -qO- http://127.0.0.1/ >/dev/null || exit 1
