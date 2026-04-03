FROM alpine:3.23

RUN apk add --no-cache \
    caddy==2.11.2-r0

USER caddy

WORKDIR /var/lib/caddy/caddy/

CMD ["caddy", "run"]
