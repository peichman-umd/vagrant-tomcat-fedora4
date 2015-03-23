#!/bin/bash

FEDORA_HOME=/apps/fedora/data

yum install -y tomcat vim

mkdir -p "$FEDORA_HOME"
chown tomcat:tomcat "$FEDORA_HOME"

# Tomcat configuration
cp /vagrant/etc/tomcat/* /etc/tomcat

cp /vagrant/um-fcrepo-webapp-4.1.1-SNAPSHOT.war /var/lib/tomcat/webapps/fcrepo.war

service tomcat restart
