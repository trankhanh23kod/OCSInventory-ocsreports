FROM php:8.1-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libapache2-mod-perl2 \
    libapache2-mod-perl2-dev \
    libxml2-dev \
    libzip-dev \
    zip \
    unzip \
    git \
    && docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache modules
RUN a2enmod rewrite

# Copy ocsreports source into Apache folder
COPY . /var/www/html/

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
