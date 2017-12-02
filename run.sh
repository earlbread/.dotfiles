#!/usr/bin/env bash
if [ -f ~/.zshrc ] && [ ! -L ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.local
fi
ln -sf .dotfiles/.zshrc ~/.zshrc
ln -sf .dotfiles/.tmux.conf ~/.tmux.conf
ln -sf .dotfiles/.ideavimrc ~/.ideavimrc 
