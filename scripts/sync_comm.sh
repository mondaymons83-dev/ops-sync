#!/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$REPO_DIR"
case "$1" in
  pull)
    git pull --rebase || true
    ;;
  push)
    git add .
    git commit -m "Sync $(date -u +'%Y-%m-%d %H:%M:%S UTC')" || true
    git push
    ;;
  *)
    echo "Usage: $0 {pull|push}"
    exit 1
    ;;
esac
