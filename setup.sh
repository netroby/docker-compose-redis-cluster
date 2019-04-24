#!/bin/sh
cp -rf docker-data/redis-cluster1.tmpl.before docker-data/redis-cluster1.tmpl
cp -rf docker-data/redis-cluster2.tmpl.before docker-data/redis-cluster1.tmpl
cp -rf docker-data/redis-cluster3.tmpl.before docker-data/redis-cluster1.tmpl
docker-compose up -d
docker-compose exec redis1  redis-cli -p 7000 --cluster create 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 --cluster-replicas 0
cp -rf docker-data/redis-cluster1.tmpl.after docker-data/redis-cluster1.tmpl
cp -rf docker-data/redis-cluster2.tmpl.after docker-data/redis-cluster1.tmpl
cp -rf docker-data/redis-cluster3.tmpl.after docker-data/redis-cluster1.tmpl
