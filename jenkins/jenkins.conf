description "Jenkins"  
author "You"  

start on runlevel [3]  
stop on shutdown  

expect fork  

script     
    cd /web 
    jjava -jar "/opt/jenkins/jenkins.war" --httpPort=8181 & >/var/log/jenkins.log 2>&1  
    emit yourservice_running  
end script  


