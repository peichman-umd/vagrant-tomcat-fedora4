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
