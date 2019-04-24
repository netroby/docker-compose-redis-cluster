#!/bin/sh
docker-compose exec redis1  redis-cli -p 7000 --cluster create 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 --cluster-replicas 0
