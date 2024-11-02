#!/bin/bash

# check docker if not installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please install Docker and try again."
    exit 1
fi

# start containers with docker compose
echo "Containers are starting up..."
docker compose -f docker-compose.dev.yml up -d
echo "Dev environment started! Good luck with your work!"
echo "You can access with http://localhost:8000"