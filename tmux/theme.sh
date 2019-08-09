# for bg colour of whole pane
set -g window-active-style "bg=colour237"
# for bg colour of inactive windows
# to look into this error
# setw -g window-status-style fg="colour233" bg="colour88"

#
# Powerline Red Block - Tmux Theme
# Created by Jim Myhrberg <contact@jimeh.me>.
#
# Inspired by vim-powerline: https://github.com/Lokaltog/powerline
#
# Requires terminal to be using a powerline compatible font, find one here:
# https://github.com/Lokaltog/powerline-fonts
#

# Status update interval
set -g status-interval 1

# Basic status bar colors
set -g status-fg colour240
set -g status-bg colour233

# Left side of status bar
set -g status-left bg=colour233
set -g status-left fg=colour243
set -g status-left-length 40
set -g status-left "#[fg=colour16,bg=colour88,bold] #S #[fg=colour88,bg=colour240,nobold]#[fg=colour233,bg=colour240] #(whoami) #[fg=colour240,bg=colour235]#[fg=colour240,bg=colour235] #I:#P #[fg=colour235,bg=colour233,nobold]"

# Right side of status bar
set -g status-right bg=colour233
set -g status-right fg=colour243
set -g status-right-length 150
set -g status-right "#[fg=colour235,bg=colour233]#[fg=colour240,bg=colour235] %H:%M:%S #[fg=colour240,bg=colour235]#[fg=colour233,bg=colour240] %d-%b-%y #[fg=colour245,bg=colour240]#[fg=colour232,bg=colour245,bold] #H "

# Window status
set -g window-status-format " #I:#W#F "
set -g window-status-current-format " #I:#W#F "

# Current window status
# to look into this error
# set -g window-status-current bg=colour124 fg=colour16

# Window with activity status
set -g window-status-activity bg=colour88  # fg and bg are flipped here due to
set -g window-status-activity fg=colour233 # a bug in tmux

# Window separator
set -g window-status-separator ""

# Window status alignment
set -g status-justify centre

# Pane border
# to look into this error
# set -g pane-border bg=default fg=colour238

# Active pane border
set -g pane-active-border bg=default
set -g pane-active-border fg=colour88

# Pane number indicator
set -g display-panes-colour colour233
set -g display-panes-active-colour colour245

# Clock mode
set -g clock-mode-colour colour88
set -g message-style bg=colour24

# Message
set -g message-style bg=colour88
set -g message-style fg=black

# Command message
set -g message-command-style bg=colour88
set -g message-command-style fg=black

# Mode
set -g mode-style bg=colour124
set -g mode-style fg=colour231

