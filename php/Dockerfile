FROM php:8.3-fpm

# Install necessary packages and PHP extensions
RUN apt-get update && \
    apt-get install -y zip unzip git libzip-dev && \
    docker-php-ext-configure zip && \
    docker-php-ext-install pdo pdo_mysql zip && \
    rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer