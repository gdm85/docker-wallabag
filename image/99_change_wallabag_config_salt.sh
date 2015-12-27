#!/bin/bash

if [ ! -f /etc/container_environment/WALLABAG_SALT ] ; then
	echo "WALLABAG_SALT not defined" 1>&2
	exit 1
fi

SALT=$(</etc/container_environment/WALLABAG_SALT) && \
sed -i "s/'SALT', '.*'/'SALT', '$SALT'/" /var/www/wallabag/inc/poche/config.inc.php
