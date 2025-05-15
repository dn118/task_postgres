.PHONY: setup db_migrate test

setup:
	docker compose up --build -d

test:
	curl localhost/users/list
