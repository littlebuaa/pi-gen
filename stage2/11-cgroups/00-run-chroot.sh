#!/bin/bash

# Raspberry Pi OS doesn't enable cgroups by default
cmdline_string="cgroup_memory=1 cgroup_enable=memory"

if ! grep -q "$cmdline_string" /boot/cmdline.txt ; then
  sed -i "1 s/\$/ $cmdline_string/" /boot/cmdline.txt
fi
