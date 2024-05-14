#! /bin/bash
# 本脚本用于安装docker，docker-compose等

#docker 安装
docker_install(){
  tar -xf docker-19.03.12.tgz
  cp -n docker/* /usr/bin/
  cp -n docker.service /etc/systemd/system/docker.service
  chmod +x /etc/systemd/system/docker.service
  systemctl daemon-reload
  systemctl start docker
  #开机自启
	systemctl enable docker.service

	st=$(systemctl status docker |grep running |awk '{print $3}');
		if [ -z $st ]
		then
		echo ------docker install failed------
	else
		echo ------docker install success-----
	fi
}

#docker-compose 安装
docker_compose_install(){
  cp docker-compose /usr/local/bin/docker-compose
	ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
	chmod +x /usr/local/bin/docker-compose

	dt=$(docker-compose -v |awk '{print $2}')
	if [ -z $dt ]
		then
		echo ------docker-compose install failed------
	else
		echo ------docker-compose install success------
	fi
}

install(){
  docker_install
  sleep 30
  docker_compose_install
  echo "------installation is complete------"
}

install

