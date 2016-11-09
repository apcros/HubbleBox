#!/bin/bash
echo "=== Configuring PHP (and Composer) ==="
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php --install-dir=/bin --filename=composer
php -r "unlink('composer-setup.php');"
composer global require "laravel/installer"