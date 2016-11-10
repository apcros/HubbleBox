#!/bin/bash
echo "=== Configuring Apache ==="
a2enmod rewrite
cp /vagrant/config/apache_000-default.conf /etc/apache2/sites-enabled/000-default.conf
a2enmod rewrite
service apache2 restart