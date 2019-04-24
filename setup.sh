#!/bin/sh
set -ex
docker-compose down
cp -rf docker-data/redis-cluster1.tmpl.before docker-data/redis-cluster1.tmpl
cp -rf docker-data/redis-cluster2.tmpl.before docker-data/redis-cluster2.tmpl
cp -rf docker-data/redis-cluster3.tmpl.before docker-data/redis-cluster3.tmpl
docker-compose up -d
sleep 5
docker-compose exec redis1  redis-cli -p 7000 --cluster create 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 --cluster-replicas 0
