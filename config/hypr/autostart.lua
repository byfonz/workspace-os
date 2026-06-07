---------------------
---- APPS ----
---------------------
local systemWorkspace = "~/Workspace/workspace-os/scripts/workspaces/monitor"
local codeWorkspace = "~/Workspace/workspace-os/scripts/workspaces/code"
local notesWorkspace = "~/Workspace/workspace-os/scripts/workspaces/notes"
local communicationWorkspace = "~/Workspace/workspace-os/scripts/workspaces/communication"

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
  hl.exec_cmd("kanshi")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
  hl.exec_cmd(systemWorkspace)
  hl.exec_cmd(communicationWorkspace)
  hl.exec_cmd(codeWorkspace)
end)
