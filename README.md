# docker-sensu-api

## Pre-Requisites

* [docker-redis](http://github.com/roobert/docker-redis)
* [docker-rabbitmq](http://github.com/roobert/docker-rabbitmq)
* [docker-sensu](http://github.com/roobert/docker-sensu)

## Post-Requisites

* [docker-uchiwa](http://github.com/roobert/docker-uchiwa)

## Build
```
docker build -t sensu-api .
```

## Run
```
docker run \
  --name sensu-api \
  -d \
  --link redis \
  --link rabbitmq \
  -e TRANSPORT_NAME=rabbitmq \
  -e RABBITMQ_URL=amqp://rabbitmq:5672 \
  -e REDIS_URL=redis://redis:6379 \
  -e SENSU_API_PORT=4567 \
  sensu-api
```

## Compose
```
docker-compose up -d
```

## Test
```
docker logs sensu-api
curl -I localhost:4567
```
