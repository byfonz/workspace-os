hl.workspace_rule({
  workspace = "1",
  monitor = "DP-1"
})

hl.workspace_rule({
  workspace = "2",
  monitor = "HDMI-A-1"
})

hl.workspace_rule({
  workspace = "3",
  monitor = "HDMI-A-1"
})

hl.workspace_rule({
  workspace = "4",
  monitor = "HDMI-A-1"
})

hl.workspace_rule({
  workspace = "5",
  monitor = "HDMI-A-1"
})

---------------------
---- WINDOW RULES ---
---------------------
--- Workspace 1: system
hl.window_rule({
  name = "system",
  match = {
    class = "ghostty",
    title = "btop"
  },
  workspace = "1"
})

hl.window_rule({
  name = "system",
  match = {
    class = "ghostty",
    title = "~"
  },
  workspace = "1"
})

--- Workspace 2: workspace
hl.window_rule({
  name = "workspace",
  match = {
    class = "ghostty",
  },
  workspace = "2"
})

--- Workspace 3: browser
hl.window_rule({
  name = "browser",
  match = {
    class = "brave-browser",
    class = "obsidian",
  },
  fullscreen = true,
  opacity = "1.0 override 0.85",
  workspace = "3"
})



