chmod 755 /opt/shellscripts/swarm/customerAPI-swarm-cent.service
cp /opt/shellscripts/swarm/customerAPI-swarm-cent.service /etc/systemd/system/multi-user.target.wants/customerAPI-swarm-cent.service --force
systemctl daemon-reload
systemctl enable customerAPI-swarm-cent.service