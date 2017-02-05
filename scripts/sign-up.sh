#!/bin/bash

curl --include --request POST http://localhost:4741/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "dog@dog.com",
      "password": "dog",
      "password_confirmation": "dog"
    }
  }'

echo
