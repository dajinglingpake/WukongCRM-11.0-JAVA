#!/bin/bash
chmod 777 entrypoint.sh;
chmod 777 data/elasticsearch/data/
docker-compose up -d
echo " ------------ 请等待十分钟后访问系统... ------------ ";