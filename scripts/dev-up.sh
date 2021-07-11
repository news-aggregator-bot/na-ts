#!/bin/bash
# Starts all the services passed as arguments
docker-compose --project-name na -f nats-cluster.yml up --no-start --build $@
docker stack deploy --compose-file nats-cluster.yml --with-registry-auth na-ts