chmod 755 /opt/shellscripts/swarm/customerAPI-swarm-cent.service
cp -f /opt/shellscripts/swarm/customerAPI-swarm-cent.service /etc/systemd/system/multi-user.target.wants/customerAPI-swarm-cent.service
systemctl daemon-reload
systemctl enable customerAPI-swarm-cent.service