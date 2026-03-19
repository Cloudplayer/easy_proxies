#!/bin/sh
# Fix ownership of mounted config directory so the non-root user can write
chown -R easy:easy /etc/easy-proxies 2>/dev/null || true

exec gosu easy /usr/local/bin/easy-proxies "$@"
