FROM php:7.4-fpm-alpine3.11

RUN sed -i 's/9000/${PORT}/' /usr/local/etc/php-fpm.d/zz-docker.conf

RUN mkdir /var/www/public; echo 'This page works' > /var/www/public/index.php
CMD php-fpm
EXPOSE ${PORT}