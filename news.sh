
#!/bin/bash


SESSION_NAME="my_tmux_session"


# Check if the session already exists

if tmux has-session -t $SESSION_NAME 2>/dev/null; then

  echo "Session $SESSION_NAME already exists. Attaching..."

  tmux attach-session -t $SESSION_NAME

else

  echo "Creating new session $SESSION_NAME..."

  

  # Start a new tmux session

  tmux new-session -d -s $SESSION_NAME "btop"


  # Split the window into panes

  tmux split-window -h -t $SESSION_NAME:0.0

  tmux split-window -v -t $SESSION_NAME:0.1

  tmux split-window -v -t $SESSION_NAME:0.2


  # Run commands in the respective panes

#  tmux send-keys -t $SESSION_NAME:0.1 "/opt/homebrew/bin/ticker -w TSLA,MSFT,PRFDX,PRWAX,BTC-USD" C-m
  tmux send-keys -t $SESSION_NAME:0.1 "ticker -w TSLA,MSFT,PRFDX,PRWAX,BTC-USD" C-m


  tmux send-keys -t $SESSION_NAME:0.2 "newsboat" C-m

#  tmux send-keys -t $SESSION_NAME:0.3 "clear; neofetch" C-m
tmux send-keys -t $SESSION_NAME:0.3 "sudo iftop -i wlp2s0" C-m


  # Increase the size of the other panes

  # tmux resize-pane -t $SESSION_NAME:0.1 -y 30


  # Bottom border of the pane up (-U) and bottom border of the pane down (-D)

  tmux resize-pane -t $SESSION_NAME:0.2 -D 11 # Push bottom border of the newsboat pane up

  # tmux resize-pane -t $SESSION_NAME:0.2 -y 30

  # tmux resize-pane -t $SESSION_NAME:0.3 -U 10


  # Then resize the ticker pane

  tmux resize-pane -t $SESSION_NAME:0.1 -U 4  # Move bottom border of the ticker up


  # Attach to the tmux session

  tmux attach -t $SESSION_NAME

fi
