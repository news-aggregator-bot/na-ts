#!/bin/bash
# Starts all the services passed as arguments
docker-compose --project-name na -f na-ts.yml up --no-start --build $@
docker stack deploy --compose-file na-ts.yml --with-registry-auth na-ts