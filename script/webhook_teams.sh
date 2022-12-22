#!/bin/bash

# Help 
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
  echo 'Usage: webhook_teams.sh "<Platform>" "<Version>" "<Id>" "<Download URL>'
  exit 0
fi

URL=$WEBHOOK_URL
TITLE="Build Success"
MESSAGE="[📱$1] Version: $2 Release: $3<br>$4"
COLOR="00FF00"
JSON="{\"title\": \"${TITLE}\", \"themeColor\": \"${COLOR}\", \"text\": \"${MESSAGE}\" }"

echo $URL
curl -s "Content-Type:application/json" -d "${JSON}" "${URL}"
