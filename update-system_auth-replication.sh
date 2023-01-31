#!/bin/bash
docker-compose exec cassandra cqlsh 10.247.41.240 -u kong -p k0ng3w --execute="ALTER KEYSPACE system_auth WITH replication = {'class': 'NetworkTopologyStrategy', 'KONG-DC1': 3}"
docker-compose exec cassandra nodetool repair --full system_auth
docker-compose exec cassandra cqlsh 10.247.41.240 -u kong -p k0ng3w --execute="SELECT * FROM system_schema.keyspaces;"
