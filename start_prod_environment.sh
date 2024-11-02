#!/bin/bash

# check docker if not installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please install Docker and try again."
    exit 1
fi

# Start containers with Docker Compose in production mode
docker compose -f docker-compose.prod.yml up -d

echo "Prod environment started! Good luck with your work!"
echo "You can access with https://localhost"