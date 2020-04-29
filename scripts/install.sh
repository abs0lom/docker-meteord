#!/bin/sh

printf "\n[-] Installing dependencies...\n\n"

apt-get update

apt-get install -y --no-install-recommends \
  apt-transport-https \
  ca-certificates \
  curl \
  bzip2 \
  bsdtar \
  build-essential \
  python \
  git

curl -v https://install.meteor.com/ | sh

