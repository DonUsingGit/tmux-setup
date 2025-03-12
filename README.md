
# This is my first use of Git. First timer :-) I'm running 22.04 ubuntu 

This repository contains my custom **tmux** setup, including configurations for:
- **tmux** (terminal multiplexer)
- **newsboat** (RSS reader)
- **iftop** (network monitoring)
- **ticker** (stock market tracker)

## 📥 Installation

To set up everything on a new Ubuntu system, open a terminal and run:

```sh
git clone git@github.com:DonUsingGit/tmux-setup.git
cd tmux-setup
chmod +x install.sh
./install.sh
```


This script will:
- Install **tmux, newsboat, iftop, and Go**
- Clone and compile **ticker**
- Copy configuration files to the correct locations

## 🔄 Running Your Setup

Once installed, you can launch your customized tmux session by running:

```sh
~/news.sh
```

This will start tmux with:
- **Ticker (top left pane)** showing stock prices
- **Newsboat (bottom left pane)** for reading RSS feeds
- **iftop (bottom right pane)** for network monitoring
- **Neofetch (top right pane)** showing system information

## 📂 Repository Structure

```
tmux-setup/
│── install.sh        # Install script for a new system
│── news.sh           # Script to launch tmux with configured panes
│── newsboat-config   # Configuration for newsboat
│── newsboat-urls     # RSS feed URLs for newsboat
│── README.md         # This file
```

## 🛠 Updating Your Setup

If you make changes and want to update your GitHub repository:

```sh
cd ~/tmux-setup
git add .
git commit -m "Updated configurations"
git push origin main
```

## 📧 Contact

If you have any questions or suggestions, feel free to reach out!


