#!/bin/sh -l
# Implements the build steps from the following code:
# https://github.com/clayrisser/linux-factory/blob/main/.gitlab-ci.yml
FACTORY_DIR="$GITHUB_WORKSPACE/$1"
cd $FACTORY_DIR
sudo virtualenv env
sudo make build