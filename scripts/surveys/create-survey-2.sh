#!/bin/bash

API="http://localhost:4741"
URL_PATH="/surveys"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "title": "'"${TITLE}"'",
    "questions": {
      "content": {
        "question": "'"${QUESTION}"'",
        "answers": [
          "'"${ANSWERS}"'"
        ]
      }
    }
  }'


echo
