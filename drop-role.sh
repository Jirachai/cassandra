#!/bin/bash
docker-compose exec cassandra cqlsh 10.247.41.240 -u kong -p k0ng3w --execute="DROP ROLE cassandra; LIST ROLES"
