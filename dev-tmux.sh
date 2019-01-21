#!/bin/sh
tmux new-session -n 'bash' -d
tmux split-window -v 
tmux split-window -h
tmux split-window -h -t 1
tmux select-pane -t 1
tmux new-window 'vim'
tmux new-window -n 'util' 'htop'
tmux split-window -h 'python3'
tmux split-window -v 'bc -l'
tmux select-window -t 1
tmux -2 attach-session -d
