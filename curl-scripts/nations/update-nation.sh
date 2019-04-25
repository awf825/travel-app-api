curl http://localhost:4741/nations/${ID} \
  --request PATCH \
  --include \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "nation" : {
      "name": "'"${NAME}"'",
      "language": "'"${LANG}"'",
      "capital": "'"${CAP}"'"
    }
  }'
