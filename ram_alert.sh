
#!/bin/bash
# Get system RAM usage
ram=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')
# Slack webhook URL
slack_url="https://hooks.slack.com/services/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"
# Message to send to Slack
message="Current RAM usage: $ram"
# Send message to Slack
curl -X POST -H 'Content-type: application/json' --data "{\"text\":\"$message\"}" $slack_url
