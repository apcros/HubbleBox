#!/bin/bash
echo "=== Configuring PostgreSQL ==="
sudo -u postgres psql -f /vagrant/config/pgsql_init.sql
sed -i 's/peer/md5/' /etc/postgresql/9.3/main/pg_hba.conf
/etc/init.d/postgresql restart