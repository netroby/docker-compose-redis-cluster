#!/bin/sh
set -ex
cp -rf docker-data/redis-cluster1.tmpl.after docker-data/redis-cluster1.tmpl
cp -rf docker-data/redis-cluster2.tmpl.after docker-data/redis-cluster2.tmpl
cp -rf docker-data/redis-cluster3.tmpl.after docker-data/redis-cluster3.tmpl
docker-compose restart
