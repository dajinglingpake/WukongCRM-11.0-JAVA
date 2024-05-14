docker network create --driver=bridge wkcrm_network
chmod 777 nacos.sh;
chmod 777 mysql.sh;
sed -i 's/\r$//' mysql.sh
sed -i 's/\r$//' nacos.sh
docker load < basejdkpython.tar
cd admin
tar -xzvf admin.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-admin-image .
cd ../authorization
tar -xzvf authorization.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-authorization-image .
cd ../bi
tar -xzvf bi.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-bi-image .
cd ../crm
tar -xzvf crm.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-crm-image .
cd ../examine
tar -xzvf examine.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-examine-image .
cd ../gateway
tar -xzvf gateway.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-gateway-image .
cd ../hrm
tar -xzvf hrm.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-hrm-image .
cd ../job
tar -xzvf job.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/127.0.0.1:8080/xxl-job-admin:8080/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-job-image .
cd ../oa
tar -xzvf oa.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-oa-image .
cd ../work
tar -xzvf work.tar.gz
sed -i 's/{REDIS_HOST:127.0.0.1}/{REDIS_HOST:redis}/g' ./config/application-dev.yml
sed -i 's/{DATASOURCE_HOST:127.0.0.1}/{DATASOURCE_HOST:mysql}/g' ./config/application-dev.yml
sed -i 's/uris: 127.0.0.1:9200/uris: elasticsearch:9200/g' ./config/application-dev.yml
sed -i 's/server-addr: 127.0.0.1:8848/server-addr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/serverAddr: 127.0.0.1:8848/serverAddr: nacos:8848/g' ./config/bootstrap.yml
sed -i 's/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/{SENTINEL_DASHBOARD_HOST:127.0.0.1}/g' ./config/bootstrap.yml
docker build -t wk-work-image .
cd ..