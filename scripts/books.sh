#!/bin/bash

curl --include --request POST http://localhost:4741/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "The Hunger Games",
      "author": "Suzanne Collins"
    }
  }'

curl --include --request DELETE https://localhost:4741/books/3

curl --include --request PATCH http://localhost:4741/books/3 \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Mockingjay",
      "author": "Suzanne Collins"
    }
  }'
