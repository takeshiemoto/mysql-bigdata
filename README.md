# MySQL Bigdata

## Getting Started

```shell
# start docker
docker-compose up -d

# composer install
docker compose exec php composer install 

# inset data
docker compose exec php php script.php
```
## Usage

```shell
# login mysql
docker compose exec mysql mysql -u user -p
```
password: password