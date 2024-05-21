FROM php:8.2-apache

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs
RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY ./www /var/www/html/

WORKDIR /var/www/html

EXPOSE 80
