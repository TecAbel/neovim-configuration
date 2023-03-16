# save on .config/tmux/tmux.conf
set -g default-terminal "tmux-256color"
# set -g default-terminal "xterm-256color"
set -ga terminal-overrides ",*256col*:Tc"
# set -ga terminal-overrides ",xter# action key

# key action
unbind C-b
set-option -g prefix C-u

# Moving window
bind-key -n C-S-Left swap-window -t -1 \; previous-window
bind-key -n C-S-Right swap-window -t +1 \; next-window

# for esc delay
set -sg escape-time 10

# Resizing pane
bind -r C-k resize-pane -U 10
bind -r C-j resize-pane -D 10
bind -r C-h resize-pane -L 10
bind -r C-l resize-pane -R 10

# vim-like pane switching
bind -r k select-pane -U 
bind -r j select-pane -D 
bind -r h select-pane -L 
bind -r l select-pane -R 

# mouse usage
set -g mouse on

#theme
set -g @plugin 'jimeh/tmux-themepack'
set -g @themepack 'powerline/default/cyan'

# run 
run '~/.tmux/plugins/tpm/tpm'
new
neww
splitw -h
splitw -v
# dont forget to install Tmux Plugin Manager TPM
## run prefix + I
