# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM phusion/baseimage:0.9.18

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Install locales
ENV DEBIAN_FRONTEND noninteractive

# Install wallabag prereqs
RUN add-apt-repository ppa:nginx/stable \
    && apt-get update \
    && apt-get install -y nginx php5-cli php5-common php5-sqlite \
          php5-curl php5-fpm php5-json php5-tidy php5-gd wget unzip gettext

# Wallabag version
ENV WALLABAG_VERSION 1.9.1-b

# Extract wallabag code
RUN wget -q https://github.com/wallabag/wallabag/archive/$WALLABAG_VERSION.zip -O /tmp/wallabag-$WALLABAG_VERSION.zip
RUN wget -q http://wllbg.org/vendor -O /tmp/vendor.zip

RUN echo "bd3e843290de28f1c20fa19ed746ca221c9174cb7f0a9723618f21bddb883e12  /tmp/vendor.zip" | sha256sum -c && \
	echo "5980584eb8fc0673fe078de1d5758cb2a3cbe078479d1e66bdceeb849b8becd8  /tmp/wallabag-$WALLABAG_VERSION.zip" | sha256sum -c

RUN mkdir -p /var/www
RUN cd /var/www \
 && unzip -q /tmp/wallabag-$WALLABAG_VERSION.zip \
 && mv wallabag-$WALLABAG_VERSION wallabag \
 && cd wallabag \
 && unzip -q /tmp/vendor.zip \
 && cp inc/poche/config.inc.default.php inc/poche/config.inc.php \
 && rm -f /tmp/wallabag-$WALLABAG_VERSION.zip /tmp/vendor.zip \
 && rm -rf /var/www/wallabag/install

# Clean up APT.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Configure php-fpm
RUN echo "cgi.fix_pathinfo = 0" >> /etc/php5/fpm/php.ini
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY www.conf /etc/php5/fpm/pool.d/www.conf

RUN mkdir /etc/service/php5-fpm
COPY php5-fpm.sh /etc/service/php5-fpm/run

RUN mkdir /etc/service/nginx
COPY nginx.sh /etc/service/nginx/run

COPY 99_change_wallabag_config_salt.sh /etc/my_init.d/99_change_wallabag_config_salt.sh

RUN chown -R www-data:www-data /var/www/wallabag \
 && chmod 775 -R /var/www/wallabag \
 && chmod 777 -R /var/www/wallabag/db

# Configure nginx to serve wallabag app
COPY nginx-wallabag /etc/nginx/sites-available/default

EXPOSE 443/tcp
