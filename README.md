# vagrant-tomcat-fedora4
Vagrant for running Fedora 4 in Tomcat

## Setup

1. Clone this repo.
1. Clone https://github.com/umd-lib/fcrepo4 and run `mvn clean install`.
2. Clone https://github.com/mohideen/umdfcrepo4 and run `mvn clean install`.
3. Copy the `um-fcrepo-webapp-4.1.1-SNAPSHOT.war` to the working directory of your clone of this repo.
4. Run `vagrant up`.
