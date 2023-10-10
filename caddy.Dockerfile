# https://hub.docker.com/_/caddy
FROM caddy:builder-alpine AS builder
RUN xcaddy build --with github.com/caddy-dns/route53

FROM caddy:alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile