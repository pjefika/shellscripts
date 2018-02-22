
DEPLOY_NAME=$0
PORT=$1

cp -R /opt/shellscripts/swarm/$DEPLOY_NAME-swarm-cent.service /etc/systemd/system/$DEPLOY_NAME-swarm-cent.service
chmod 777 /etc/systemd/system/$DEPLOY_NAME-swarm-cent.service

firewall-cmd --zone=dmz --add-port=$PORT/tcp --permanent
firewall-cmd --zone=public --add-port=$PORT/tcp --permanent
firewall-cmd --reload

systemctl daemon-reload
systemctl enable $DEPLOY_NAME-swarm-cent.service