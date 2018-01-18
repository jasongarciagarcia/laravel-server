FROM jasongarciagarcia/apache-server-laravel
ENV APP_HOME /var/www/html
RUN mkdir -p  /opt/data/public && \
  rm -rf  /var/www/html && \
  ln -s /opt/data/public $APP_HOME

RUN /opt/data/public/php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN /opt/data/public/php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
WORKDIR $APP_HOME
