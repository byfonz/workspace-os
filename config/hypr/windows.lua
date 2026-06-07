-- Workspace 1: System Monitor
hl.window_rule({
  name = "btop",
  match = {
    class = "com.mitchellh.ghostty",
    title = "btop",
    workspace = "1",
  },
})

hl.window_rule({
  name = "fastfetch",
  match = {
    class = "com.mitchellh.ghostty",
    title = "~",
    workspace = "1",
  },
})

-- Workspace 2: Code
hl.window_rule({
  name = "nvim",
  match = {
    class = "com.mitchellh.ghostty",
    title = "nvim",
    workspace = "2",
  },
})

hl.window_rule({
  name = "tmux",
  match = {
    class = "com.mitchellh.ghostty",
    title = "tmux",
    workspace = "2",
  },
})

-- Workspace 4: Browser
hl.window_rule({
  name = "browser",
  match = {
    class = "brave-browser",
    title = "New Tab - Brave",
    workspace = "3",
  },
})

-- Workspace 5: Notes
hl.window_rule({
  name = "obsidian",
  match = {
    class = "obsidian",
    workspace = "4",
  },
})

-- Workspace 6:

-- Workspace 8: Gaming
