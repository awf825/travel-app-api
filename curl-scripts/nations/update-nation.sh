curl http://localhost:4741/nations/${ID} \
  --request PATCH \
  --include \
  --header 'Content-Type: application/json' \
  --data '{
    "nation" : {
      "name": "'"${NAME}"'",
      "language": "'"${LANG}"'",
      "capital": "'"${CAP}"'"
    }
  }'
