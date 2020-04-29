#!/bin/sh

printf "\n[-] Building Meteor application...\n\n"

cd "$APP_SOURCE_DIR" || exit

meteor npm install --production

meteor build \
  --directory "$APP_BUNDLE_DIR" \
  --server-only

cd "$APP_BUNDLE_DIR/bundle/programs/server" || exit

meteor npm install --production

cd "$APP_BUNDLE_DIR/bundle" || exit
