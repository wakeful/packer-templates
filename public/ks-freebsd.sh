PARTITIONS=ada0
DISTRIBUTIONS="base.txz kernel.txz"

#!/bin/sh

sysrc ifconfig_em0="DHCP"
sysrc sshd_enable="YES"
sysrc dumpdev="AUTO"

sysrc -f /boot/loader.conf autoboot_delay="5"

echo toorroot | pw mod user root -h 0
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
