FROM azukiapp/php-fpm:5.6
COPY ./docker/nginx.conf /etc/nginx/sites-available/app.conf
COPY ./docker/php.ini /etc/php5/fpm/php.ini
RUN /bin/bash -c 'ln -s /etc/nginx/sites-available/app.conf /etc/nginx/sites-enabled/app.conf'

