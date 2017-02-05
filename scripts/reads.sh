curl --include --request POST http://localhost:4741/reads \
  --header "Content-Type: application/json" \
  --data '{
    "read": {
      "user_id": "1",
      "book_id": "4",
      "rating": "5"
    }
  }'

  curl --include --request DELETE http://localhost:4741/reads/1

  curl --include --request PATCH http://localhost:4741/reads/2 \
    --header "Content-Type: application/json" \
    --data '{
      "read": {
        "user_id": "1",
        "book_id": "4",
        "rating": "4"
      }
    }'
