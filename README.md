# Unifor ADS - Projeto Aplicado de Desenvolvimento de Software

## Tecnologias

* Rails 7
* Ruby 3
* Dockerfile and Docker Compose
* PostgreSQL
* Redis

## Requisitos

Docker e Docker compose (v2+)

https://docs.docker.com/compose/#compose-v2-and-the-new-docker-compose-command

## Setup
```
cp .env.example .env
docker compose build
docker compose run --rm web bin/rails db:setup
```

```
docker compose up
```

```
docker compose exec web bin/rails c
```

```
docker compose run --rm web bin/rails c
```
