chmod 755 /opt/shellscripts/swarm/customerAPI-swarm-cent.service
cp /opt/shellscripts/swarm/customerAPI-swarm-cent.service /etc/systemd/system/multi-user.target.wants/
systemctl enable customerAPI-swarm-cent.service