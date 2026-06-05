---------------------
---- APPS ----
---------------------
local systemWorkspace = "~/Workspace/workspace-os/scripts/system_monitor_workspace"
local codeWorkspace = "~/Workspace/workspace-os/scripts/code_workspace"
local notesWorkspace = "~/Workspace/workspace-os/scripts/notes_workspace"

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
  hl.exec_cmd(systemWorkspace)
  hl.exec_cmd(codeWorkspace)
  hl.exec_cmd(notesWorkspace)
end)
