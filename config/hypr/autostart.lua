---------------------
---- APPS ----
---------------------
local terminal = "ghostty"
local btop = "ghostty -e btop"
local fastfetch = "ghostty -e ~/Workspace/workspace-os/scripts/startup/fastfetch"
local nvim = "ghostty --title nvim -e nvim ~/Workspace/"
local git = "ghostty --title git"
local obsidian = "obsidian --new-window"
local localhost = "brave --new-window http://localhost:3000 "

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
  hl.exec_cmd(btop)
  hl.exec_cmd(fastfetch)
  hl.exec_cmd(nvim)
  hl.exec_cmd(git)
  hl.exec_cmd("brave --password-store=basic")
  hl.exec_cmd(localhost)
  hl.exec_cmd(obsidian)
end)
