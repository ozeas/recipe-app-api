compose:
	docker-compose run --rm app sh -c "$(command)"

run:
	make compose command="python manage.py $(command)"

tests:
	make run command="test && flake8"

lint:
	make compose command="flake8"

makemigrations:
	make run command="makemigrations"

migrate:
	make makemigrations
	make run command="migrate"
