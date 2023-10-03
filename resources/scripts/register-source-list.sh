#!/bin/bash

if [ ! -d /etc/apt/sources.list.d ]; then
  mkdir -p /etc/apt/sources.list.d
fi

echo "deb [trusted=yes] https://raw.githubusercontent.com/blacksmithdata/mylinux-cli/master/ linux/mylinux-cli/alpine/" > /etc/apt/sources.list.d/mylinux-cli.list
echo "deb [trusted=yes] https://raw.githubusercontent.com/blacksmithdata/mylinux-cli/master/ linux/blacksmith-cli/alpine/" > /etc/apt/sources.list.d/blacksmith-cli.list
