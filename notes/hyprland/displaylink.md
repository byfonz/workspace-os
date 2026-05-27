# DisplayLink Setup Notes — EndeavourOS

## Hardware Setup

* Laptop
* Dell D6000 Dock
* 32" curved monitor (main horizontal display)
* 27" vertical monitor
* External SSD running EndeavourOS

---

# Goal

Configure DisplayLink correctly on EndeavourOS for stable multi-monitor support.

---

# Important Discovery

The dock was detected correctly by Linux:

Bus output:
17e9:6006 DisplayLink Dell Universal Dock D6000

Meaning:

* USB hub works
* Dock hardware detected
* DisplayLink chipset recognized

Problem:

* External monitors were not appearing
* Only laptop display (`eDP-1`) detected initially

---

# Key Understanding

## Direct HDMI vs DisplayLink

### Direct HDMI to laptop

Works automatically through GPU:

* no DisplayLink drivers required

### Monitors through dock

Require:

* evdi kernel module
* displaylink service

---

# Wayland Issue

`xrandr` warning:
WARNING: running xrandr against an Xwayland server

Meaning:

* system was using Wayland
* DisplayLink support less stable on Wayland

Recommended:

* use KDE Plasma X11 for stability

---

# Installed Packages

Installed through AUR:

```bash
yay -S evdi-dkms displaylink
```

Installed successfully:

* evdi-dkms
* displaylink

---

# Verification

## Kernel module loaded correctly

Command:

```bash
lsmod | grep evdi
```

Output:

```text
evdi 118784 14
```

Meaning:

* DKMS build successful
* DisplayLink kernel module active

---

# Enable DisplayLink Service

Commands:

```bash
sudo systemctl enable displaylink.service
sudo systemctl start displaylink.service
```

Check status:

```bash
systemctl status displaylink.service
```

Expected:

```text
active (running)
```

---

# Recommended Session

At login screen:
Select:

```text
Plasma (X11)
```

Avoid:

```text
Plasma (Wayland)
```

for DisplayLink stability.

---

# Reboot Procedure

Important:

* dock connected during boot
* monitors connected before login

Then reboot:

```bash
sudo reboot
```

---

# Monitor Detection Check

After reboot:

```bash
xrandr
```

Expected:

* HDMI outputs
* DP outputs
* DisplayLink virtual outputs

instead of only:

```text
eDP-1
```

---

# Monitor Layout Plan

Recommended layout:

[ Vertical 27" ]
|
[ 32" Curved Main ]
|
[ Laptop Screen ]

---

# Planned Roles

## 32" Curved Monitor

* coding
* design
* main workspace

## Vertical Monitor

* documentation
* terminal logs
* chat/apps

## Laptop Display

* monitoring
* music
* dashboards

---

# Future Improvements

## Install autorandr

```bash
sudo pacman -S autorandr
```

Purpose:
automatic monitor profile switching:

* docked mode
* laptop-only mode

---

# Maintenance Notes

After kernel updates:

```bash
dkms status
```

Verify:

* evdi rebuilt correctly
* DisplayLink still functional

---

# Important Lesson

Native GPU outputs are more stable than DisplayLink on Linux.

DisplayLink should only be used when:

* dock requires USB graphics
* extra displays unavailable through GPU directly

---

# Current Status

✅ DisplayLink dock detected
✅ evdi module installed
✅ DKMS build successful
✅ Ready for X11 monitor configuration
