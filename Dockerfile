# Use the official PHP image as base
FROM php:7.4-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the PHP files to the container
COPY . .

# Install PHP dependencies
RUN apt-get update && apt-get install -y \
    libzip-dev \
    && docker-php-ext-install pdo_mysql zip

# Enable Apache Rewrite module
RUN a2enmod rewrite

# Configure Apache DocumentRoot
RUN sed -ri -e 's!/var/www/html!/var/www/html/public!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!/var/www/html/public!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Expose port 80
EXPOSE 80

# Start Apache service
CMD ["apache2-foreground"]
