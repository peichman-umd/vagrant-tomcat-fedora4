#!/bin/bash

FEDORA_HOME=/apps/fedora/data

yum install -y tomcat vim httpd mod_ldap

mkdir -p "$FEDORA_HOME"
chown tomcat:tomcat "$FEDORA_HOME"

# Tomcat and Apache configuration
cp -r /vagrant/etc/* /etc

cp /vagrant/um-fcrepo-webapp-4.1.1-SNAPSHOT.war /var/lib/tomcat/webapps/fcrepo.war

service tomcat restart
service httpd restart

# give Tomcat time to start up
sleep 10

# set up read-only access for all authenticated users
# note the double slash in rest//fcr:accessroles
# this is NOT a typo, it is require to set the root
# collection's ACL
curl -s http://localhost:8080/fcrepo/rest//fcr:accessroles \
    -X POST \
    -u admin:admin \
    -H 'Content-Type: application/json' \
    -d '{"EVERYONE":["reader"]}'
