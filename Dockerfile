FROM nginx:latest

COPY . /var/www/html
COPY default.conf /etc/nginx/conf.d/default.conf  

# Expose port 80
EXPOSE 80

