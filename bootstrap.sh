#!/bin/bash

FEDORA_HOME=/apps/fedora/data

yum install -y tomcat vim

mkdir -p "$FEDORA_HOME"
chown tomcat:tomcat "$FEDORA_HOME"

# Tomcat configuration
cp /vagrant/etc/tomcat/* /etc/tomcat

cp /apps/git/fcrepo4/fcrepo-webapp/target/fcrepo-webapp-4.0.0.war /var/lib/tomcat/webapps

service tomcat restart
