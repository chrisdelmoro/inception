#!/bin/sh

SERVER_CONF=/etc/nginx/sites-available/ccamargo

if [ ! -f "$SERVER_CONF" ]
then
	# SSL cert
	openssl req -new -nodes -x509 \
	-newkey rsa:4096 \
	-sha256 \
	-days 365 \
	-keyout $CERT_KEY_ \
	-out $CERTS_ \
	-subj "/C=BR/ST=Sao Paulo/L=Sao Paulo/O=42 School/OU=ccamargo/CN=ccamargo.42.com"
	# domain configs
	mkdir -p /var/www/ccamargo
	mv /srcs/ccamargo /etc/nginx/sites-available/
	sed -i "s/DOMAIN_NAME/$DOMAIN_NAME/g" /etc/nginx/sites-available/ccamargo
	sed -i -r "s#CERTS_#$CERTS_#g" /etc/nginx/sites-available/ccamargo
	sed -i -r "s#CERT_KEY_#$CERT_KEY_#g" /etc/nginx/sites-available/ccamargo
	ln -s /etc/nginx/sites-available/ccamargo etc/nginx/sites-enabled/
	mv /srcs/ssl-params.conf /etc/nginx/snippets/
fi

exec "$@"