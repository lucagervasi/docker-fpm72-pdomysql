FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo_mysql

ADD docker-compose-installer.php /i.php
RUN php /i.php --quiet  --install-dir=/usr/bin --filename=composer

RUN apk --update --no-cache add nodejs-current nodejs-npm
