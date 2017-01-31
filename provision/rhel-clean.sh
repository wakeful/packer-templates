#!/usr/bin/env bash

# yum cache
yum clean all
yum clean all
rm -rf /var/cache/yum/*

# clear history
echo >/root/.bash_history

# rm all network interf
rm -rf /etc/sysconfig/network-scripts/ifcfg-*
