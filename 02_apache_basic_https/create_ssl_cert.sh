#!/bin/bash

openssl req \
  -newkey rsa:2048 \
  -nodes \
  -keyout httpd.key \
  -x509 \
  -days 365 \
  -out httpd.crt \
  -subj "/C=DE/ST=Sachsen-Anhalt/L=FunkyTown/CN=lab-apache-https"

chmod 664 httpd.key

# https://unix.stackexchange.com/questions/104171/create-ssl-certificate-non-interactively
