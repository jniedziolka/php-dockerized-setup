FROM php:8.1-fpm

RUN curl -sS https://getcomposer.org/installer |php \
    && mv composer.phar /usr/local/bin/composer

WORKDIR /var/www/html