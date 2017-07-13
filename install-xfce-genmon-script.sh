#!/bin/bash

if [ "$(id -u)" == "0" ]
then
   echo "Don't run this script as root, run it as your desktop user." 1>&2
   exit 1
fi

GENMON_INSTALLED=$(dpkg --get-selections | grep "^xfce4-genmon-plugin[[:space:]]*install$")
if [[ -z GENMON_INSTALLED ]]
then
   echo "Please install xfce4-genmon-plugin first:" 1>&2
   echo "" 1>&2
   echo "sudo apt install xfce4-genmon-plugin" 1>&2
   exit 1
fi

cp ./source/bin/chip-battery-xfce-genmon /usr/local/bin/
chmod +x /usr/local/bin/chip-battery-xfce-genmon

echo "Done!"