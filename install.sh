#!/bin/bash

# Script to initiate environement with puppet
# This script can be set as initial script when creating VPS

# Classic system update
#######################
apt-get update -y

# Necessary packages for autoconfig
#######################
apt-get install puppet git -y

# Git clone the main repo in the manifests dir
#######################
cd /etc/puppet/manifests
git clone https://github.com/l1br3/puppet-main.git
puppet apply manifests/puppet-main/main.pp --verbose
