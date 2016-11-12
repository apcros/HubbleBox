#!/bin/bash
echo "=== Configuring Hubble ==="
mkdir /srv/hubble-app/
cd /srv/hubble-app/
git clone https://github.com/apcros/Hubble.git

export PGPASSWORD=password

#The below REALLY should be a DatabaseSeeding script...
psql -U hubble_user -d hubbledb < /srv/hubble-app/Hubble/hubble_schema.sql

rm -r /var/www/html/
chown -R vagrant:vagrant /srv/hubble-app/Hubble/

cp /vagrant/config/hubble_env /srv/hubble-app/Hubble/hubble/.env

cd /srv/hubble-app/Hubble/hubble/

composer install
php artisan key:generate

ln -s /srv/hubble-app/Hubble/hubble/public/ /var/www/html
chown -R vagrant:vagrant /var/www/
