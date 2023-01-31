#!/bin/bash
docker-compose exec cassandra cqlsh 10.247.41.240 -u cassandra -p cassandra --execute="CREATE USER kong WITH PASSWORD 'k0ng3w' SUPERUSER; LIST ROLES"
