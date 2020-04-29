#!/bin/bash

printf "\n[-] Performing final cleanup...\n\n"

apt-get purge -y --auto-remove \
  apt-transport-https \
  ca-certificates \
  curl \
  bzip2 \
  bsdtar \
  build-essential \
  python \
  git
apt-get -y autoremove
apt-get -y clean
apt-get -y autoclean

rm -rf /var/lib/apt/lists/*
rm -rf /usr/share/{doc,doc-base,man,locale,zoneinfo}
rm -rf /var/lib/{cache,log}
rm -rf "$APP_SOURCE_DIR"
rm -rf /usr/local/bin/meteor
rm -rf /root/.meteor
rm -rf /root/{.npm,.cache,.config,.cordova,.local}
rm -rf /tmp/*
rm -rf /opt/nodejs/bin/npm
rm -rf /opt/nodejs/lib/node_modules/npm
