# build docker image
docker build -t analytics --progress=plain --no-cache .

# run locally
docker run -e DB_HOST=localhost -e DB_PORT=5432 -e DB_NAME=dbname -e DB_USERNAME=local -e DB_PASSWORD=local-password  analytics
