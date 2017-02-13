#!/usr/bin/env sh
set -x

dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

sync

exit 0
