FROM nginx:stable-alpine

# COPY Custom Config
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

RUN addgroup -g 1000 www && adduser -G www -g www -s /bin/sh -D www
RUN chmod 777 /var/www

# Set Group to Workspace
RUN chown www:www /var/www