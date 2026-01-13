#!/usr/bin/env bash

set -e

if [ "$#" -ne 1 ]; then
    echo "Error: Exactly one argument required - target directory"
    exit 1
fi

TEMP_DIR=.temp

TARGET_DIR=$1

mkdir -p "$TARGET_DIR"/"$TEMP_DIR"

pushd "$TARGET_DIR"

# Clone all the stuff we need

pushd "$TEMP_DIR"

git clone --depth=1 git@github.com:poljpocket/processwire-docker.git
git clone --depth=1 git@github.com:fruitcakeweb/processwire-profile-php.git

# Clean out .git directories

rm -rf processwire-docker/.git
rm -rf processwire-profile-php/.git

popd # TEMP_DIR

# Move everything to where it belongs

mv "$TEMP_DIR"/processwire-docker/* ./
mv "$TEMP_DIR"/processwire-docker/.* ./

mv "$TEMP_DIR"/processwire-profile-php/* ./site/
mv "$TEMP_DIR"/processwire-profile-php/.* ./site/

rm -rf "$TEMP_DIR"

popd # $TARGET_DIR
