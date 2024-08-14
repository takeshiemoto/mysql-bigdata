.PHONY: up down clean mysql-user mysql-root

init:
	docker compose up -d --build
	docker compose exec php composer install

up:
	docker compose up -d

down:
	docker compose down

clean:
	docker compose down
	docker volume rm mysql-bigdata_mysql_data

mysql-user:
	docker compose exec mysql mysql -u user -p

mysql-root:
	docker compose exec mysql mysql -u root -p
