#!/usr/bin/env bash

wget https://www.php-proxy.com/download/php-proxy.zip

# Inflate. The "-n" flag ensures that we don't overwrite
# existing files (ONLY get the vendor/ directory).
unzip -n -qq php-proxy.zip

rm php-proxy.zip