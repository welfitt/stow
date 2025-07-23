#!/opt/homebrew/bin/bash
# This script if for crapple kit
session_name="td"
if tmux has-session -t $session_name 2>/dev/null; then
	echo "Using existing tmux session $session_name"
else
	echo "Creating new tmux session $session_name"
	tmux new-session -s $session_name -d
	tmux split-window -h -t $session_name
	tmux split-window -h -t $session_name
	tmux select-layout  -t $session_name even-horizontal
  tmux select-pane -t $session_name:0.1
fi
tmux attach -t $session_name
