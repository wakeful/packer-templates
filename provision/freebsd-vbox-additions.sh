#!/usr/bin/env csh

setenv ASSUME_ALWAYS_YES yes
pkg update
pkg install virtualbox-ose-additions

sysrc vboxguest_enable="YES"
sysrc vboxservice_enable="YES"
