# MySQL Bigdata

## Getting Started

```shell
# start docker
make init

# composer install
docker compose exec php composer install 

# inset data
docker compose exec php php script.php
```
## Usage

```shell
# login user password = password
make mysql-user
# or
# login root password = empty
make mysql-root
```