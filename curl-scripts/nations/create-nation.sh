curl "http://localhost:4741/nations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "nation": {
      "name": "'"${NAME}"'",
      "language": "'"${LANG}"'",
      "capital": "'"${CAP}"'"

    }
  }'
