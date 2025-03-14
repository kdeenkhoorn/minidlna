FROM docker.io/alpine:latest

ARG MINIDLNA_VERSION=1.3.3-r1

# Install
RUN apk --no-cache add bash curl minidlna=${MINIDLNA_VERSION} tini shadow su-exec alpine-conf inotify-tools \
    && mkdir -p /var/run/minidlna \
    && chown -R minidlna:minidlna /var/run/minidlna /opt

USER minidlna

# Entrypoint
ENTRYPOINT ["/sbin/tini", "--", "/usr/sbin/minidlnad"]
CMD ["-R", "-d"]
