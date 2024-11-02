#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
      sleep 0.1
    done

    echo "PostgreSQL started"
fi
# migrations
python manage.py makemigrations content
python manage.py migrate
# static
python manage.py collectstatic --noinput

exec "$@"