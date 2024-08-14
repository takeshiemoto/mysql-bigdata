.PHONY: up down clean

up:
	docker compose up -d

down:
	docker compose down

clean:
	docker compose down
	docker volume rm mysql-bigdata_mysql_data
