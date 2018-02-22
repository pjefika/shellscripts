
DEPLOY_NAME=$1
PORT=$2

mkdir /opt/swarm/$DEPLOY_NAME/

echo "

[Unit]
Description=stealerAPI Service
After=auditd.service systemd-user-sessions.service time-sync.target
 
 
[Service]
User=root
TimeoutStartSec=0
Type=simple
KillMode=process
ExecStart = "$JAVA_HOME"/bin/java -jar /opt/swarm/stealerAPI/stealerAPI-swarm.jar >> /opt/swarm/stealerAPI/stealerAPI-swarm.log
WorkingDirectory=/opt/swarm/stealerAPI/
StandardOutput=journal+console

[Install]
WantedBy = multi-user.target

" > /opt/shellscripts/swarm/$DEPLOY_NAME-swarm.service


cp -R /opt/shellscripts/swarm/$DEPLOY_NAME-swarm.service /etc/systemd/system/$DEPLOY_NAME-swarm.service
chmod 777 /etc/systemd/system/$DEPLOY_NAME-swarm.service

firewall-cmd --zone=dmz --add-port=$PORT/tcp --permanent
firewall-cmd --zone=public --add-port=$PORT/tcp --permanent
firewall-cmd --reload

systemctl daemon-reload
systemctl enable $DEPLOY_NAME-swarm.service

systemctl stop $DEPLOY_NAME-swarm.service
systemctl start $DEPLOY_NAME-swarm.service
