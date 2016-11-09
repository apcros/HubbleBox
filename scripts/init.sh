#!/bin/bash
echo "=== Running apt-get update ==="
apt-get update
echo "=== Installing All packages ==="
apt-get install apache2 php5 php5-pgsql php5-json postgresql git -y

echo "=== Running rest of the provisionning scripts... ==="
cd /vagrant/scripts/
./config_apache.sh
./config_pgsql.sh
./config_php.sh
./config_hubble.sh
