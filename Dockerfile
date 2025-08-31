# Base image
FROM php:8.3-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev git unzip curl libzip-dev zip nodejs npm \
    && docker-php-ext-install pdo pdo_pgsql zip

# Install Composer
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy project
COPY . .

# Install PHP dependencies
RUN composer install 
#--no-dev --optimize-autoloader

# Install Node dependencies and build assets
#RUN npm install --legacy-peer-deps && npm run build

# Set permissions for Laravel
RUN chown -R www-data:www-data storage bootstrap/cache

CMD ["php-fpm"]
