FROM php:8.1-apache

# 1. Cài package cần thiết
RUN apt-get update && apt-get install -y \
    unzip \
    git \
    libxml2-dev \
    libzip-dev \
    zip \
    && docker-php-ext-install mysqli pdo pdo_mysql

# 2. Enable Apache rewrite
RUN a2enmod rewrite

# 3. Cài Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# 4. Copy source code
COPY . /var/www/html/

WORKDIR /var/www/html/

# 5. Cài dependencies bằng Composer
RUN composer install --no-dev --optimize-autoloader

# 6. Phân quyền
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
