FROM php:7.2-apache

RUN a2enmod rewrite
RUN a2enmod proxy proxy_http
RUN docker-php-ext-install pdo_mysql mysqli

COPY ./000-default.conf /etc/apache2/sites-available/000-default.conf
COPY adminer.php /var/www/html

EXPOSE 80

