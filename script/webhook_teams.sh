#!/bin/bash

# Help 
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
  echo 'Usage: webhook_teams.sh "<Platform>" "<Version>" "<Id>" "<Download URL>"'
  exit 0
fi

WEBHOOK_URL=https://fxabs.webhook.office.com/webhookb2/2aa7f774-01e2-42a7-82c9-6d90520030d4@265236f7-2209-439f-9846-5423e4ae0ded/IncomingWebhook/a7b2b3ca9968420bb2e1cf631a564059/5158c2d7-f578-4d31-97e6-d46544f4ae9e
TITLE="Build Success"
MESSAGE="[📱$1] Version: $2 Release: $3<br>$4"
COLOR="00FF00"
JSON="{\"title\": \"${TITLE}\", \"themeColor\": \"${COLOR}\", \"text\": \"${MESSAGE}\" }"

curl -H "Content-Type:application/json" -d "${JSON}" "${WEBHOOK_URL}"
