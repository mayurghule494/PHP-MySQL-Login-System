FROM nginx:latest

COPY . /var/www/html

# Expose port 80
EXPOSE 80

