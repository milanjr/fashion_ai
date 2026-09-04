#!/bin/bash
set -euo pipefail

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

openapi-generator-cli generate \
  -i "$PROJECT_ROOT/fashion_openapi/openapi.yaml" \
  -g dart-dio \
  -o "$PROJECT_ROOT/fashion_flutter_api" \
  -c "$PROJECT_ROOT/fashion_openapi/dart-client-config.yaml"

cd "$PROJECT_ROOT/fashion_flutter_api"

dart run build_runner build --delete-conflicting-outputs
