
DEPLOY_NAME=$1
PORT=$2

echo "

[Unit]
Description=".$DEPLOY_NAME." Service
After=auditd.service systemd-user-sessions.service time-sync.target
 
 
[Service]
User=root
TimeoutStartSec=0
Type=simple
KillMode=process
ExecStart = /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.151-5.b12.el7_4.x86_64/jre/bin/java -jar /opt/swarm/".$DEPLOY_NAME."/".$DEPLOY_NAME."-swarm.jar > /opt/swarm/".$DEPLOY_NAME."/".$DEPLOY_NAME."-swarm.log
WorkingDirectory=/opt/swarm/".$DEPLOY_NAME."/


[Install]
WantedBy = multi-user.target

" >> /opt/shellscripts/swarm/$DEPLOY_NAME-swarm-cent.service

#cp -R /opt/shellscripts/swarm/$DEPLOY_NAME-swarm-cent.service /etc/systemd/system/$DEPLOY_NAME-swarm-cent.service
#chmod 777 /etc/systemd/system/$DEPLOY_NAME-swarm-cent.service

#firewall-cmd --zone=dmz --add-port=$PORT/tcp --permanent
#firewall-cmd --zone=public --add-port=$PORT/tcp --permanent
#firewall-cmd --reload

#systemctl daemon-reload
#systemctl enable $DEPLOY_NAME-swarm-cent.service