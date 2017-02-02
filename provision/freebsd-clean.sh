#!/usr/bin/env csh

setenv ASSUME_ALWAYS_YES yes
pkg clean


rm -f /var/db/dhclient.leases.*


echo >/root/.history

shutdown -p +48s
