#!/bin/bash

# disable warning message on login about WiFi being blocked by rfkill
# WiFi is disabled by default, see https://github.com/RPi-Distro/pi-gen/blob/66cd2d17a0d2d04985b83a2ba830915c9a7d81dc/export-noobs/00-release/files/release_notes.txt#L223-L229
if [ -e /etc/profile.d/wifi-check.sh ] ; then
  mv /etc/profile.d/wifi-check.sh /etc/profile.d/wifi-check.sh.bak
fi

