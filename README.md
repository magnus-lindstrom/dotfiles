# Installation

Below steps will assume that this repo is installed in `~/repos/dotfiles`

## NeoVim
Neovim 0.6.0 is needed at the least. Can be installed from the stable ppa. See
updated info on `https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable`.
The plugin manager vim-plug, plus packages, are included in this repo.

## Symlinks
Create symlinks to dotfiles in repo.
```
ln -s ~/repos/dotfiles/.config/nvim/ ~/.config/nvim
ln -s ~/repos/dotfiles/.bashrc ~/.bashrc
ln -s ~/repos/dotfiles/.tmux.conf ~/.tmux.conf
```
