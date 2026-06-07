# Created by newuser for 5.9
eval "$(starship init zsh)"

alias obsidian="flatpak run md.obsidian.Obsidian"

export PATH="$HOME/Workspace/workspace-os/scripts:$PATH"
export PATH="$HOME/Workspace/workspace-os/scripts/workspaces:$PATH"

gcommit() {
  git commit -m "$"
}

gsave() {
  git add .
  git commit -m "$"
}

gsync() {
  git add .
  git commit -m "$@" &&
  git push
}
