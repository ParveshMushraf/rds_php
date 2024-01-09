FROM php:7.4-apache

# Set environment variables for RDS connection
ENV DB_HOST database-1.cy4ab8iggx5n.ap-southeast-2.rds.amazonaws.com
ENV DB_PORT 3306
ENV DB_USER muji
ENV DB_PASS mujikutty19
ENV DB_NAME database-1

# Enable Apache modules and configure PHP
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli pdo pdo_mysql


# Copy your PHP application files to the container
COPY . /var/www/html/

# Expose port 80 for Apache
EXPOSE 80

# Start Apache web server
CMD ["apache2-foreground"]
