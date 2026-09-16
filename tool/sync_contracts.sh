#!/usr/bin/env bash
# Salin kontrak Dart dari monorepo buildingvision (jangan edit contracts/ manual).
set -e
SRC="${1:-../buildingvision/contracts}"
DST="$(dirname "$0")/../packages/bv_core/lib/src/generated"
mkdir -p "$DST"
cp "$SRC/build/tokens.dart" "$DST/tokens.dart"
cp "$SRC/build/status_map.dart" "$DST/status_map.dart"
cp "$SRC/sync-api.md" "$(dirname "$0")/../contracts/sync-api.md"
cp "$SRC/permissions.yaml" "$(dirname "$0")/../contracts/permissions.yaml"
echo "contracts synced from $SRC"
