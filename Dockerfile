FROM php:8-apache

# Create the "coming-soon" directory and copy the code
#RUN mkdir /var/www/html/coming-soon

# Copy the application files to the web root directory
COPY . /var/www/html

# Change ownership of the directory to www-data
#RUN chown -R www-data:www-data /var/www/html/coming-soon

# Set the document root
#ENV APACHE_DOCUMENT_ROOT /var/www/html/coming-soon
#RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
#RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Enable Apache modules
RUN a2enmod rewrite

# Start Apache
CMD ["apache2-foreground"]