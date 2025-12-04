FROM php:8.2-apache

# Install ekstensi mysqli (wajib)
RUN docker-php-ext-install mysqli

# Copy file aplikasi ke folder Apache
COPY public/ /var/www/html/

# Aktifkan modul rewrite Apache
RUN a2enmod rewrite
