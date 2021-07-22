FROM php:7-apache

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# see https://hub.docker.com/_/php
# see https://github.com/mlocati/docker-php-extension-installer

RUN  chmod +x /usr/local/bin/install-php-extensions && sync && \
    apt-get update && apt-get install -y zip && \
    install-php-extensions intl && \
    a2enmod rewrite

WORKDIR /usr/local/bin

# see https://getcomposer.org/download/
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar composer

WORKDIR /var/www/html