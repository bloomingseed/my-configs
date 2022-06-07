- Store some config files & how to install them

## To be updated
In `~/.tmux.conf`:
```
# Naviagate with hjkl instead of arrow buttons
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# changing prefix from 'Ctrl+b' to 'Ctrl+Space'
unbind C-b
set-option -g prefix C-Space
bind-key C-Space send-prefix
```
