FROM debian:stretch

LABEL maintainer="Wang Kai (https://github.com/kaiwk)"

ADD apt/sources.list /etc/apt/
ADD caddy/Caddyfile /etc/caddy/

RUN apt-get update -y && \
    apt-get install -y curl && \
    curl https://getcaddy.com | bash -s personal

EXPOSE 80

CMD ["caddy", "-conf", "/etc/caddy/Caddyfile"]
