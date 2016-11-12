#!/bin/bash
echo "=== Configuring Apache ==="
a2enmod rewrite
cp /vagrant/config/apache_000-default.conf /etc/apache2/sites-enabled/000-default.conf
cp /vagrant/config/apache_envvars /etc/apache2/envvars
a2enmod rewrite
service apache2 restart