FROM ubuntu:latest

# Install apache, PHP, and supplimentary programs. openssh-server, curl, and lynx-cur are for debugging the container.
RUN apt-get update 
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get -y update 
RUN apt-get -y upgrade 
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install php5.6
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install php5.6-mysql
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install libapache2-mod-php5.6 
# RUN curl lynx-cur

# Enable apache mods.
RUN a2enmod php5.6
RUN a2enmod rewrite

# Update the PHP.ini file, enable <? ?> tags and quieten logging.
RUN sed -i "s/short_open_tag = Off/short_open_tag = On/" /etc/php/5.6/apache2/php.ini
RUN sed -i "s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/" /etc/php/5.6/apache2/php.ini

# Manually set up the apache environment variables
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV SITE_URI localhost:8080
#ENV PORT 80

# Expose apache.
EXPOSE $PORT

# Copy this repo into place.
ADD html /var/www/html
RUN chmod 777 /var/www/html/public/images
RUN chmod 777 /var/www/html/public/js
RUN chmod 777 /var/www/html/public/themes/default/_img

# Update the default apache site with the config we created.
ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
ADD ports.conf /etc/apache2/ports.conf

# By default start up apache in the foreground, override with /bin/bash for interative.
CMD /usr/sbin/apache2ctl -D FOREGROUND

#CMD sed -i "s/80/$PORT/g" /etc/apache2/sites-enabled/000-default.conf /etc/apache2/ports.conf && /usr/sbin/apache2ctl -D FOREGROUND

#update apache port at runtime for Heroku
#ENTRYPOINT []
#CMD sed -i "s/80/$PORT/g" /etc/apache2/sites-enabled/000-default.conf /etc/apache2/ports.conf && docker-php-entrypoint apache2-foreground
#CMD sed -i "s/80/$PORT/g" /etc/apache2/sites-enabled/000-default.conf /etc/apache2/ports.conf
#CMD /usr/sbin/apache2ctl -D FOREGROUND
#CMD gunicorn --bind 0.0.0.0:$PORT wsgi