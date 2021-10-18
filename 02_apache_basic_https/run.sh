#!/bin/bash

echo "starting apache..."
echo "you can access apache on localhost:8080 for HTTP"
echo "or https://localhost:8443 for HTTPS"

docker run \
  -d \
  --rm \
  -p 8080:80 \
  -p 8443:443 \
  -v $(pwd)/httpd.crt:/etc/pki/tls/certs/httpd.crt \
  -v $(pwd)/httpd.key:/etc/pki/tls/private/httpd.key \
  -v $(pwd)/ssl.conf:/etc/httpd/conf.d/ssl.conf \
  -v $(pwd)/public-html/index.html:/var/www/html/index.html \
  apache_basic_https
