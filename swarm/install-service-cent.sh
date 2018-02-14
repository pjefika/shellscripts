cp -R /opt/shellscripts/swarm/customerAPI-swarm-cent.service /etc/systemd/system/customerAPI-swarm-cent.service
chmod 777 /etc/systemd/system/customerAPI-swarm-cent.service

firewall-cmd --zone=dmz --add-port=7171/tcp --permanent
firewall-cmd --zone=public --add-port=7171/tcp --permanent
firewall-cmd --reload

systemctl daemon-reload
systemctl enable customerAPI-swarm-cent.service