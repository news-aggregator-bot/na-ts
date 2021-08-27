#!/bin/bash
# Starts all the services passed as arguments
docker-compose --project-name na -f na-ts.yml up --no-start --build --scale nats=3 $@
docker stack deploy --compose-file na-ts.yml --with-registry-auth na-ts