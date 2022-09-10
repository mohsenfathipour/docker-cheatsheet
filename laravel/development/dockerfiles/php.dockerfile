FROM php:8.1-fpm

RUN apt-get update && \
    apt-get install -y git zip libcurl4-openssl-dev libonig-dev libtool libpq-dev libxml2-dev libsqlite3-dev openssl curl 

# Laravel 9 php extiontions
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install ctype
RUN docker-php-ext-install curl
RUN docker-php-ext-install dom
RUN docker-php-ext-install fileinfo
RUN docker-php-ext-install mbstring

RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_pgsql
RUN docker-php-ext-install pdo_mysql 
RUN docker-php-ext-install pdo_sqlite

RUN docker-php-ext-install xml

RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

