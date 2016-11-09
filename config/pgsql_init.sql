CREATE USER hubble_user;
ALTER ROLE hubble_user WITH CREATEDB;
CREATE DATABASE hubbledb OWNER hubble_user;
ALTER USER hubble_user WITH ENCRYPTED PASSWORD 'password';