#!/usr/bin/env bash
set -euo pipefail
TOPIC=${1:-${NTFY_TOPIC:-}}
MESSAGE=${2:-}
if [[ -z "$TOPIC" || -z "$MESSAGE" ]]; then
  echo "Usage: $0 <topic> "message"" >&2
  exit 1
fi
curl -s -d "$MESSAGE" "https://ntfy.sh/$TOPIC" >/dev/null && echo "Notification sent"
