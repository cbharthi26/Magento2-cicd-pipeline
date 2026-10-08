#!/bin/bash
# Manual Deploy Script for Magento
echo "Starting Magento Deployment..."
cd /var/www/html/magento2
git pull
php bin/magento maintenance:enable
composer install
php bin/magento setup:upgrade
php bin/magento cache:flush
php bin/magento maintenance:disable
echo "Deployment Done!"
