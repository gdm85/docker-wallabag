all: image data/poche.sqlite salt

image:
	if [ ! -n "$(SERVER_NAME)" ]; then read -p "Server name: " -r SERVER_NAME || exit $$?; fi; \
		sed "s~%SERVER_NAME%~$$SERVER_NAME~g" image/nginx-wallabag.template > image/nginx-wallabag
	cd image && docker build -t wallabag .

data/poche.sqlite:
	touch data/poche.sqlite
	sqlite3 data/poche.sqlite < data/poche.sql
	sudo chown -R www-data.www-data data/

salt:
	xxd -l 20 -c 20 -p /dev/urandom > salt

.PHONY: image
