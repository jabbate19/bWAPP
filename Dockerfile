FROM tutum/lamp:latest

RUN rm -rf /app

RUN sed -i 's/allow_url_include = Off/allow_url_include = On/' /etc/php5/apache2/php.ini

COPY /app /app/

CMD ["/run.sh"]

