#!/usr/bin/env bash
set -e
docker rm -f oc2a 2>/dev/null || true
mkdir -p /tmp/oc2a
cp "$(dirname "$0")/config.json" /tmp/oc2a/config.json
docker run -d --name oc2a -p 8080:8080 \
  -e CONFIG_SEED_PATH=/seed/config.json \
  -v /tmp/oc2a/config.json:/seed/config.json:ro \
  ghcr.io/jasonxu114514/opencode2api:latest
sleep 4
echo "--- healthz ---"
curl -s -m 10 http://localhost:8080/healthz || echo "(chua san sang)"
echo
docker logs --tail 5 oc2a 2>&1 || true
