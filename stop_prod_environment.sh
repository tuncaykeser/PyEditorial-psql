#!/bin/bash

# check docker if not installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Please install Docker and try again."
    exit 1
fi

# Stop containers with Docker Compose in production mode
docker compose -f docker-compose.prod.yml down

echo "Containers are stopping..."
echo "Good luck with your work!"
