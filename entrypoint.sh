#!/bin/sh -l

FACTORY_DIR="$GITHUB_WORKSPACE/$1"
cd $FACTORY_DIR
sudo make build
