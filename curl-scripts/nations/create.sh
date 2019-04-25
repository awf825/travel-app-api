curl "http://localhost:4741/nations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "nation": {
      "name": "'"${TEXT}"'",
      ""
    }
  }'
