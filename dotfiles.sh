#!/bin/bash
# launches tmux dotfiles development environment

SESSION='dotfiles'

# start tmux server
tmux start-server

tmux new-session -d -s $SESSION
tmux send-keys "nvim distribute_configs.sh" C-m

# Split pane 1 vertically by 50%
tmux splitw -v -p 50

tmux selectp -t 1
#tmux splitw -h -p 66
tmux send-keys "nvim readme.md" C-m

# attach to the session
tmux attach-session -t $SESSION
