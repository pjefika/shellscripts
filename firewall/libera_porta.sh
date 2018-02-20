firewall-cmd --zone=dmz --add-port=7171/tcp --permanent
firewall-cmd --zone=public --add-port=7171/tcp --permanent
firewall-cmd --reload