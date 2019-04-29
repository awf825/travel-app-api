curl "http://localhost:4741/highlight" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "highlight": {
      "landmark": "'"${LNDMRK}"'",
      "revisit": "'"${BOOLEAN}"'"
    }
  }'

echo
