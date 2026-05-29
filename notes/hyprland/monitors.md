## Commands
List Monitors
`hyprctl monitors all`

Monitor Configuration
#nwg-displays is used for managing, arraging multi monitor setup profiles and generating the #lua files for #hyprland config files.

## Multiple Monitors
For enabling multiple monitors configuration we used #hyprdyanmicmonitors a services that allows create multiple monitor profiles based on setup or workflow requirements.

**Installation**
```
yay S hyprdynamicmonitors-bin
```

**Setup**
Launch TUI  and configure monitors
```
hyprdynamicmonitors tui
```

After configuring the monitors profiles configuration, we need to add it to the #/config/hypr/hyprland configuration file 
```
source = ~/.config/hypr/monitors.conf
```

This launches the monitor daemon when Hyprland starts.

**Configuration**
Systemd was used to ensure consistency across different monitor profiles
```
systemctl --user daemon-reload
systemctl --user enable --now hyprdynamicmonitors.service
```

