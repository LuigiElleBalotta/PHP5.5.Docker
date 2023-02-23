FROM php:5.5.38-apache

RUN apt-get update
RUN docker-php-ext-install mysqli \
    && docker-php-ext-enable mysqli \
    && RUN docker-php-ext-install gd \
    && docker-php-ext-enable gd \
    && a2enmod rewrite && a2enmod headers \
    && ln -s /etc/apache2/mods-available/expires.load /etc/apache2/mods-enabled/ \
    && chmod 777 /var/www/html