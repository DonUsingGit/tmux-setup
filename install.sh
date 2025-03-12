#!/bin/bash

echo "Updating package list..."
sudo apt update -y

echo "Installing required programs..."
sudo apt install -y tmux newsboat iftop golang

echo "Setting up ticker..."
if [ ! -d "$HOME/ticker" ]; then
    git clone https://github.com/achannarasappa/ticker.git ~/ticker
    cd ~/ticker
    go build .
    echo "Ticker installed!"
fi

echo "Creating Newsboat config directory..."
mkdir -p ~/.newsboat

echo "Copying configuration files..."
cp newsboat-config ~/.newsboat/config
cp newsboat-urls ~/.newsboat/urls
cp news.sh ~/news.sh
chmod +x ~/news.sh

echo "Setup complete!"
echo "Run ./news.sh to start tmux with your setup."
