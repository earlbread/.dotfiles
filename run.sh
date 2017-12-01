#!/usr/bin/env bash
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.local
fi
ln -sf .dotfiles/.zshrc ~/.zshrc
ln -sf .dotfiles/.tmux.conf ~/.tmux.conf
ln -sf .dotfiles/.ideavimrc ~/.ideavimrc 
