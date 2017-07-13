# chip-battery-status

A simple script to provide battery status for 
NextThing.co's C.H.I.P. inside the xfce4 desktop.

![chip-battery-status xfce genmon preview](assets/chip-battery-genmon-preview.png)

## Installation
```
sudo ./install.sh
```

Once that's complete you need to add a panel item 
to your xfce4 desktop.

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

![xfce panel item setup #3](assets/chip-battery-genmon-setup-3.png)

5. Enjoy. 🍹 🌴