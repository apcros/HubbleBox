#!/bin/bash
echo "=== Configuring Apache ==="
a2enmod rewrite
cp /vagrant/config/apache_000-default.conf /etc/apache2/sites-enabled/000-default.conf
service apache2 restart
/etc/init.d/postgresql restart