FROM httpd:2.4

COPY . /usr/local/apache2/htdocs/

COPY . /var/www/html
EXPOSE 8080

