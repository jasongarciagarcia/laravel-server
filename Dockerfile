FROM jasongarciagarcia/apache-server-laravel
ENV APP_HOME /var/www/html
RUN mkdir -p  /opt/data/public && \
  rm -rf  /var/www/html && \
  ln -s /opt/data/public $APP_HOME

RUN php /opt/data/composer.phar install 
WORKDIR $APP_HOME
