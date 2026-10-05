#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
(cd source && npm install)
trap 'kill 0' EXIT
(cd . && node backend/server.mjs) &
(cd source && npm run dev) &
wait
