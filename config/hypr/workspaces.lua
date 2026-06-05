hl.workspace_rule({
  workspace = "1",
})

hl.workspace_rule({
  workspace = "2",
})

hl.workspace_rule({
  workspace = "3",
})

hl.workspace_rule({
  workspace = "4",
})

hl.workspace_rule({
  workspace = "5",
})

---------------------
---- WINDOW RULES ---
---------------------
--- Workspace 1: system
hl.window_rule({
  name = "system",
  match = {
    class = "com.mitchellh.ghostty",
    title = "tmux",
  },
  workspace = "1",
})

--- Workspace 2: workspace
hl.window_rule({
  name = "nvim",
  match = {
    class = "com.mitchellh.ghostty",
    title = "nvim",
    workspace = "2",
  },
})

hl.window_rule({
  name = "terminal",
  match = {
    class = "com.mitchellh.ghostty",
    title = "tmux",
    workspace = "2",
  },
})

hl.window_rule({
  name = "render",
  match = {
    class = "brave-browser",
    title = "localhost",
    workspace = "2",
  },
})

--- Workspace 3: browser
hl.window_rule({
  name = "browser",
  match = {
    class = "brave-browser",
    fullscreen = true,
    workspace = "3",
  },
})

hl.window_rule({
  name = "notes",
  match = {
    class = "obsidian",
    workspace = "4",
  },
})
