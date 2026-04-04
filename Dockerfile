FROM caddy:2.11.2-alpine AS deps

FROM alpine:3.23

COPY --from=deps /usr/bin/caddy /usr/bin/caddy

RUN addgroup -g 101 caddy && \
    adduser -u 100 -G caddy -D -H -s /sbin/nologin caddy

USER caddy

WORKDIR /var/lib/caddy/caddy/

CMD ["caddy", "run"]
