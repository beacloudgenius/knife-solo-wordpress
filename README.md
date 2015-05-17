How to use this

	berks install
	
	knife solo bootstrap ubuntu@ip.add.re.ss

	or 
	
	knife solo prepare ubuntu@ip.add.re.ss
	knife solo cook ubuntu@ip.add.re.ss

Prepare wordpress

	sudo su
	wget http://wordpress.org/latest.tar.gz  
	tar xfz latest.tar.gz
	mkdir -p /var/www
	mv wordpress /var/www
	rm -f latest.tar.gz  
	cd /var/www
        rm -rf /var/www/wordpress.cloudgeni.us
	mv wordpress wordpress.cloudgeni.us
	chown -R www-data:www-data /var/www

Setup database

	mysql -u root -p123
	create database wordpress;  
	create user 'username'@'localhost' identified by 'password'; 
	grant usage on *.* to username@localhost identified by 'password';  
	grant all privileges on wordpress.* to username@localhost;
	flush privileges;

edit wp-config.php config file

	cp wp-config-sample.php wp-config.php

Set permissions

    chown -R www-data:www-data /var/www/wordpress.cloudgeni.us

    chmod 400 wp-config.php
