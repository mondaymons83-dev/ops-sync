#!/bin/bash
if [ -z "$2" ]; then
  echo "Usage: $0 <topic> <message>"
  exit 1
fi
TOPIC="$1"
shift
MESSAGE="$*"
curl -d "$MESSAGE" "https://ntfy.sh/$TOPIC"
