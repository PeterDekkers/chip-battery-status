# C.H.I.P. battery status for xfce4 desktop

A simple script to display battery percentage 
on the xfce4 desktop of NextThing.co's C.H.I.P.

Works nicely with PocketC.H.I.P.

![chip-battery-status xfce genmon preview](assets/chip-battery-genmon-preview.png)

## How to install
Download/clone the files to your C.H.I.P.
```
cd chip-battery-status
sudo ./install.sh
```

Now you need to add a panel item to your xfce4 desktop.

1. Right-click (_or Ctrl-click_) on an existing panel item,
e.g your clock. Choose `Panel > Add New Items...`

![xfce panel item setup #1](assets/chip-battery-genmon-setup-1.png)

2. Select `Generic Monitor` from the list and hit `Add`

![xfce panel item setup #2](assets/chip-battery-genmon-setup-2.png)

3. You'll see `(genmon) xxx` appear in your panel. Right-click 
(_or Ctrl-click_) it and choose `Properties`

![xfce panel item setup #3](assets/chip-battery-genmon-setup-3.png)

4. In the `Command` field enter `chip-battery-xfce-genmon` and
for the `Period (s)` enter `5`. Hit `Close`

![xfce panel item setup #4](assets/chip-battery-genmon-setup-4.png)

5. Enjoy. 🍹 🌴

## How to uninstall
```
sudo ./uninstall.sh
```
This will disable the battery status polling service
and remove previously-installed scripts and files.

It will not remove the desktop panel item. To remove that 
simply right-click (_or Ctrl-click_) the item and select 
`Remove`.

## Customisation
You can change the way the battery status is
displayed by editing `/usr/local/bin/chip-battery-xfce-genmon`.

Follow the instructions on the [xfce4-genmon-plugin](http://goodies.xfce.org/projects/panel-plugins/xfce4-genmon-plugin)
page to change colours, add images, etc.
