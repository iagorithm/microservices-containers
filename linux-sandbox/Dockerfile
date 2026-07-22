FROM alpine:3.22

RUN apk add --no-cache \
      bash \
      coreutils \
      curl \
      findutils \
      iproute2 \
      jq \
      procps \
      tar \
      util-linux \
    && mkdir -p /opt/scripts /var/log/sandbox /workspace /backups

COPY scripts/ /opt/scripts/
COPY crontab /etc/crontabs/root
COPY entrypoint.sh /usr/local/bin/container-entrypoint

RUN chmod +x /opt/scripts/*.sh /usr/local/bin/container-entrypoint \
    && chmod 0600 /etc/crontabs/root

WORKDIR /workspace

ENTRYPOINT ["/usr/local/bin/container-entrypoint"]
