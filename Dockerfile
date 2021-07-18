FROM php:7-apache

RUN  apt-get update && apt-get install -y git-all

WORKDIR /usr/local/bin/composer

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');"

WORKDIR /var/www/html