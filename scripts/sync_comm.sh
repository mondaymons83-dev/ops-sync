#!/usr/bin/env bash
set -euo pipefail
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"
DEFAULT_BRANCH=${DEFAULT_BRANCH:-main}
CMD=${1:-}
if [[ -z "$CMD" ]]; then
  echo "Usage: $0 pull|push"
  exit 1
fi
case "$CMD" in
  pull)
    git fetch origin "$DEFAULT_BRANCH"
    git pull --rebase origin "$DEFAULT_BRANCH"
    ;;
  push)
    git add comm
    git commit -m "comm update $(date -Iseconds)" || echo "No changes to commit"
    git push origin "$DEFAULT_BRANCH"
    ;;
  *)
    echo "Unknown command: $CMD" >&2
    exit 1
    ;;
esac
