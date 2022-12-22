#!/bin/bash

# Help 
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
  echo 'Usage: webhook_teams.sh "<Platform>" "<Version>" "<Id>" "<Download URL>'
  exit 0
fi

TITLE="Build Success"
MESSAGE="[📱$1] Version: $2 Release: $3<br>$4"
COLOR="00FF00"

curl -f -d @- -H "Content-Type: application/json" "$WEBHOOK_URL" <<EOSLACKJSON
{
  "title": "$TITLE",
  "themeColor": "$COLOR",
  "text": "$MESSAGE"
}
EOSLACKJSON