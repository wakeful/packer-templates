#!/usr/bin/env bash

cat << EOF > /etc/zypp/repos.d/OSS.repo
[OSS]
enabled=1
autorefresh=1
baseurl=http://download.opensuse.org/tumbleweed/repo/oss/
type=yast2
gpgcheck=1
EOF
