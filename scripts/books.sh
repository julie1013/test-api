#!/bin/bash

curl --include --request POST http://localhost:4741/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Mockingjay",
      "author": "Suzanne Collins"
    }
  }'

curl --include --request GET http://localhost:4741/books/

curl --include --request DELETE http://localhost:4741/books/3

curl --include --request PATCH http://localhost:4741/books/6 \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Mockingjay",
      "author": "Suzanne Collins"
    }
  }'
