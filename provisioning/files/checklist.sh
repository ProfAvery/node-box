#!/bin/bash

. $HOME/lib/assert.sh
. $HOME/.bash_aliases

# shared_dir
assert_raises 'test -h /home/vagrant/shared'

# packages
assert 'which g++' /usr/bin/g++

# n
PATH=$HOME/n/bin:$PATH assert 'which node' /home/vagrant/n/bin/node

# npm
PATH=$HOME/n/bin:$PATH assert 'which yo' /home/vagrant/n/bin/yo

# mongodb
assert 'readlink $(which mongo)' /home/vagrant/mongodb/bin/mongo

# redis
assert 'readlink $(which redis-cli)' /home/vagrant/redis/src/redis-cli

# cf
assert 'which cf' /usr/bin/cf

# dotfiles
assert 'test -f /home/vagrant/.gitignore_global'
assert 'test -f /home/vagrant/.gitconfig'

# gems
assert 'which gist' $(ruby -rubygems -e 'puts Gem.user_dir')/bin/gist

# hub
assert 'which hub' /usr/local/bin/hub
assert 'alias git' "alias git='hub'"

# ngrok
assert 'which ngrok' /home/vagrant/bin/ngrok

assert_end
