#!/bin/sh

export PROVISIONING=/vagrant/provisioning
PROVISIONED=/var/log/provisioning

mkdir -p $PROVISIONED

export DEBIAN_FRONTEND=noninteractive
export DEBIAN_PRIORITY=critical
alias apt-get='apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"'

for script in $PROVISIONING/scripts/*.sh; do
    scriptname=`basename $script`
    echo $scriptname
    . $script 2>&1 | tee $PROVISIONED/$scriptname.log
done
