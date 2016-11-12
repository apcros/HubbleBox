#!/bin/bash
echo "=== Configuring Hubble ==="
mkdir /srv/hubble-app/
cd /srv/hubble-app/
git clone https://github.com/apcros/Hubble.git

export PGPASSWORD=password

rm -r /var/www/html/
chown -R vagrant:vagrant /srv/hubble-app/Hubble/

cp /vagrant/config/hubble_env /srv/hubble-app/Hubble/hubble/.env

cd /srv/hubble-app/Hubble/hubble/

composer install
php artisan key:generate
php artisan migrate

ln -s /srv/hubble-app/Hubble/hubble/public/ /var/www/html
chown -R vagrant:vagrant /var/www/
