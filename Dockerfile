FROM php:7.2-fpm-alpine

RUN apk --update --no-cache add nodejs nodejs-npm git libpng libpng-dev jpeg jpeg-dev \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install gd

ADD docker-compose-installer.php /i.php
RUN php /i.php --quiet  --install-dir=/usr/bin --filename=composer

