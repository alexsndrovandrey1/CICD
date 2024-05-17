#! /bin/bash
TG_TOKEN="7045298089:AAH0faEpwfV0codoyuYtz0IQBfHijA9kdAU"
TG_USER_ID="396152596"
TIME=10
URL="https://api.telegram.org/bot$TG_TOKEN/sendMessage"
TEXT="Deploy status: $1%0A%0AProject:+$CI_PROJECT_NAME%0AStage: $CI_JOB_STAGE
%0AUrl:+ $CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+ $CI_COMMIT_REF_SLUG%0AStatus: $CI_JOB_STATUS"
curl -s --max-time $TIME -d "chat_id=$TG_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null