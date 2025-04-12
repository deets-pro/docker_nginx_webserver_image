FROM nginx:stable-alpine

# ADD Custom Config
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf

# Make Directory - Workspace
RUN mkdir -p /var/www/html

# ADD and set Group
RUN addgroup -g 1000 www && adduser -G www -g www -s /bin/sh -D www

RUN chmod 777 /var/www/html

# Set Group to Workspace
RUN chown www:www /var/www/html