cp /opt/shellscripts/swarm/customerAPI-swarm-cent.service /etc/systemd/system/multi-user.target.wants/customerAPI-swarm-cent.service
chmod 777 /etc/systemd/system/multi-user.target.wants/customerAPI-swarm-cent.service
systemctl daemon-reload
systemctl enable customerAPI-swarm-cent.service