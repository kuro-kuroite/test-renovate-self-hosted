#!/usr/bin/env zsh

set -e

# renovate: datasource=github-tags depName=nodejs/node versioning=node
export NODE_VERSION=14.19.3

brew install git

brew install nodebrew
nodebrew setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
nodebrew install $NODE_VERSION
nodebrew use $_

brew install yarn

brew doctor
