
DEPLOY_NAME=$1

echo "

[Unit]
Description=Generic Service
After=auditd.service systemd-user-sessions.service time-sync.target
 
 
[Service]
User=root
TimeoutStartSec=0
Type=simple
KillMode=process
ExecStart = "$JAVA_HOME"/bin/java -jar /opt/"$DEPLOY_NAME"/"$DEPLOY_NAME".jar >> /opt/"$DEPLOY_NAME"/"$DEPLOY_NAME".log
WorkingDirectory=/opt/"$DEPLOY_NAME"/
StandardOutput=journal+console

[Install]
WantedBy = multi-user.target

" > /opt/shellscripts/swarm/$DEPLOY_NAME.service

cp -R /opt/shellscripts/swarm/$DEPLOY_NAME.service /etc/systemd/system/$DEPLOY_NAME.service
chmod 777 /etc/systemd/system/$DEPLOY_NAME.service

rm -R /opt/shellscripts/swarm/$DEPLOY_NAME.service


systemctl daemon-reload
systemctl enable $DEPLOY_NAME.service

systemctl stop $DEPLOY_NAME.service
systemctl start $DEPLOY_NAME.service
