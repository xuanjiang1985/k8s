#!/bin/bash
# this cronjob bash created for k8s php deployment singel replica in php-deployment-cron.yaml and docker image crunchgeek/php-fpm:7.2
# running crobjob with php-cli, do not start php-fpm.

echo "* * * * * www-data /usr/local/bin/php /var/www/html/lumen57/artisan schedule:run >> /tmp/cron.log" >> /etc/crontab &&
/usr/sbin/service cron restart &&
#php-fpm
tail -f /dev/null