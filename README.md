Wordpress Vagrant
=================

Vagrant config to start local environment for developing with Wordpress in a matter of minutes

# Requisites

Vagrant

    http://www.vagrantup.com/

Virtualbox

    https://www.virtualbox.org/


### Start local server

    vagrant up

Once it completes (first run will be longer) open ```http://localhost:8080``` in your browser

You should see

    Index of /

    [ICO]	Name	Last modified	Size	Description

    Apache/2.2.22 (Ubuntu) Server at localhost Port 8080


### Get Wordpress

Download and extract ```http://wordpress.org/latest.zip``` to the ```/sites``` directory.

Note: You might want to select different language version

Open ```http://localhost:8080/``` in your browser, you should see the Installation Screen

### Default credentials

These are meant only for local vagrant setup and must not be used on production server

    # Mysql
    database_name: wordpress
    database_user: wordpress
    database_pass: wordpress
    database_port: 3306

### Stop server by typing

    vagrant halt


### Accessing Mysql

Download MySQL Workbench

    http://dev.mysql.com/downloads/tools/workbench/

Credentials (from host machine)

    mysql port: 33060

