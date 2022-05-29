FROM php:8.1-fpm

WORKDIR /var/www/html

RUN curl -sS https://getcomposer.org/installer |php \
    && mv composer.phar /usr/local/bin/composer

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN docker-php-ext-install pdo_mysql

RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

COPY ./src /var/www/html

COPY --chown=www:www . /var/www

USER www