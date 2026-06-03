hl.workspace_rule({
  workspace = "1",
  monitor = "DP-1",
})

hl.workspace_rule({
  workspace = "2",
  monitor = "HDMI-A-1",
})

hl.workspace_rule({
  workspace = "3",
  monitor = "HDMI-A-1",
})

hl.workspace_rule({
  workspace = "4",
  monitor = "HDMI-A-1",
})

hl.workspace_rule({
  workspace = "5",
  monitor = "HDMI-A-1",
})

---------------------
---- WINDOW RULES ---
---------------------
--- Workspace 1: system
hl.window_rule({
  name = "system",
  match = {
    class = "com.mitchellh.ghostty",
    title = "btop",
  },
  workspace = "1",
})

hl.window_rule({
  name = "system",
  match = {
    class = "com.mitchellh.ghostty",
    title = "ponchoio@ponchoio: ~",
  },
  workspace = "1",
})

--- Workspace 2: workspace
hl.window_rule({
  name = "nvim",
  match = {
    class = "com.mitchellh.ghostty",
    title = "nvim",
  },
  workspace = "2",
})

hl.window_rule({
  name = "git",
  match = {
    class = "com.mitchellh.ghostty",
    title = "git",
  },
  workspace = "2",
})

hl.window_rule({
  name = "render",
  match = {
    class = "brave-browser",
    title = "render",
  },
  workspace = "2",
})

--- Workspace 3: browser
hl.window_rule({
  name = "browser",
  match = {
    class = "brave-browser",
  },
  fullscreen = true,
  opacity = "1.0 override 0.85",
  workspace = "3",
})

hl.window_rule({
  name = "notes",
  match = {
    class = "obsidian",
  },
  workspace = "4",
})
