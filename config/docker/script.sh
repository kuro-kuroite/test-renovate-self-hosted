#!/usr/bin/env zsh

set -e

brew install git

brew install nodebrew
nodebrew setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
nodebrew install stable
nodebrew use $_

brew install yarn

brew doctor

# renovate: datasource=github-tags depName=nodejs/node versioning=node
export NODE_VERSION=14.15.3
# renovate: datasource=npm depName=yarn
export YARN_VERSION=1.22.4
