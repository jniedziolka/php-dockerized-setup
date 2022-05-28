FROM php:8.1-fpm

RUN curl -sS https://getcomposer.org/installer |php \
    && mv composer.phar /usr/local/bin/composer

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo_mysql

WORKDIR /var/www/html