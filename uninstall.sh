#!/bin/bash

read -p "Are you sure? [y/N]" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

if [ "$(id -u)" != "0" ]
then
   echo "This script must be run as root (use sudo ./uninstall.sh)." 1>&2
   exit 1
fi

# Disable updater service
systemctl stop chip-battery-status-update.timer
systemctl disable chip-battery-status-update.timer
rm -f /etc/systemd/system/chip-battery-status-update.service
rm -f /etc/systemd/system/chip-battery-status-update.timer

# Remove status files
rm -f /usr/local/lib/chip-battery-status/charging
rm -f /usr/local/lib/chip-battery-status/percentage

# Remove status update script
rm -f /usr/local/sbin/chip-battery-update-status

# Remove xfce4-genmon-plugin polling script
rm -f /usr/local/bin/chip-battery-xfce-genmon

echo ""
echo "Done!"
echo ""
echo "You can now remove the Generic Monitor item from the xfce4 desktop panel."
echo ""
echo "If you're not using xfce4-genmon-plugin for anything else you can"
echo "remove it with:"
echo ""
echo "sudo apt remove xfce4-genmon-plugin"
echo ""