#! /bin/bash

sudo pacman -S curl wget git alacritty
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

cp -r ../dotfiles/i3 ../dotfiles/i3status $HOME/.config/
cp -r ../dotfiles/home/** $HOME/
cp ../bin/** $HOME/.local/bin/
