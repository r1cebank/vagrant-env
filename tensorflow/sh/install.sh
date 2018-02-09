#!/usr/bin/env bash

if [ -e "/etc/vagrant-provisioned" ];
then
    echo "Vagrant provisioning already completed. Skipping..."
    exit 0
else
    echo "Starting Vagrant provisioning process..."
fi

# Change the hostname so we can easily identify what environment we're on:
echo "tensorflow-vagrant" > /etc/hostname
# Update /etc/hosts to match new hostname to avoid "Unable to resolve hostname" issue:
echo "127.0.0.1 tensorflow-vagrant" >> /etc/hosts
# Use hostname command so that the new hostname takes effect immediately without a restart:
hostname tensorflow-vagrant

# Install core components
/vagrant/sh/core.sh

touch /etc/vagrant-provisioned

echo "--------------------------------------------------"
echo "Your vagrant instance is running at: 192.168.33.10"
echo "Be sure to install your dotfiles"
