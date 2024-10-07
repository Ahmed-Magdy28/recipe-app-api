#!/usr/bin/bash
# "to run tests"
docker-compose run --rm app sh -c "python manage.py test"
# to make migrations
docker-compose run --rm app sh -c "python manage.py makemigrations"
# to migrate the data
docker-compose run --rm app sh -c "python manage.py migrate"
# to check if the app wait for the data or not
docker-compose run --rm app sh -c "python manage.py wait_for_db"
# to check for the data and then run the tests
docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py test"
# to test if the data is availabe and to migrate the models to the database
docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"
#  to create a new superuser
docker-compose run --rm app sh -c "python manage.py createsuperuser"

# "to build without cache"
docker-compose build --no-cache

# "to up the server"
docker-compose up
#  to get docker down run
docker-compose down


# "give new command for docker"
docker-compose run --rm app sh -c "Input here"

docker-compose run --rm app sh -c "python manage.py startapp"


# " to check for the db:"
docker-compose run --rm app sh -c "python manage.py wait_for_db"
# "with linting:"
docker-compose run --rm app sh -c "python manage.py wait_for_db && flake8"


# tells you about all the data in the docker
docker volume ls
#  to delete this data
docker volume rm