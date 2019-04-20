docker build -t mock-server .
docker run --rm -p 6789:6789 mock-server:latest

curl -X GET \
  http://localhost:6789/api/users \
  -H 'cache-control: no-cache' \
  -H 'postman-token: 21d15a6c-8a9e-b7db-7164-c1af5b0810a4'
