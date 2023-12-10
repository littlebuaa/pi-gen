#!/bin/bash -e

apt-get install -y avahi-daemon git
update-ca-certificates --fresh
export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt
curl -sSL "https://get.docker.com/" | sh