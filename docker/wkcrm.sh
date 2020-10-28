#!/bin/sh
#chkconfig: 2345 80 05
#description: wkcrm
#author: hmb
server_names=('admin' 'authorization' 'bi' 'crm' 'gateway' 'job' 'oa' 'work')
echo "等待mysql和nacos启动..."
sleep 180s
case "$1" in
start)
    # shellcheck disable=SC2164
    cd /opt
    echo "启动sentinel"
    nohup java -Dserver.port=8079 -Dproject.name=sentinel-dashboard -jar sentinel/sentinel-dashboard.jar > sentinel/log.out 2>&1 &
    echo "启动seata"
    nohup sh seata/bin/seata-server.sh  > seata/log.out 2>&1 &
    # shellcheck disable=SC2039
    for value in "${server_names[@]}"
    do
        # shellcheck disable=SC2164
        cd /opt/package/$value
        sh 72crm.sh start
        sleep 2s;
    done
    echo "wkcrm startup"
    tail -f /dev/null
    ;;
stop)
    # shellcheck disable=SC2164
    cd /opt
    # shellcheck disable=SC2039
    for value in "${server_names[@]}"
    do
        sh package/$value/72crm.sh stop;
        sleep 0.5s;
    done
    ;;
restart)
    # shellcheck disable=SC2164
    cd /opt
    # shellcheck disable=SC2039
    for value in "${server_names[@]}"
    do
        sh package/$value/72crm.sh stop;
        sleep 0.5s;
    done
    echo "启动sentinel"
    nohup java -Dserver.port=8079 -Dproject.name=sentinel-dashboard -jar sentinel/sentinel-dashboard.jar > sentinel/log.out 2>&1 &
    echo "启动seata"
    nohup sh seata/bin/seata-server.sh  > seata/log.out 2>&1 &
    for value in "${server_names[@]}"
    do
        # shellcheck disable=SC2164
        cd /opt/package/$value
        sh 72crm.sh start
        sleep 2s;
    done
    echo "wkcrm startup"
    tail -f /dev/null
    ;;
*)
    echo "start|stop|restart"
    ;;
esac
exit $?