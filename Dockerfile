FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

RUN apk add --no-cache \
    caddy==2.11.2-r2

USER caddy

WORKDIR /var/lib/caddy/caddy/

CMD ["caddy", "run"]
