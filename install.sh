#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing minimal YADR for the first time"
    git clone https://github.com/xytis/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    git checkout minimal
    rake install
else
    echo "YADR is already installed"
fi
