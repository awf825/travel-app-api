curl "http://localhost:4741/nations/${USERID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
