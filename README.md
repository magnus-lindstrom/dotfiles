# Installation

Below steps will assume that this repo is installed in `~/repos/dotfiles`

## NeoVim
Neovim 0.6.0 is needed at the least. Can be installed from the stable ppa. See
updated info on `https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable`.
The plugin manager vim-plug, plus packages, are included in this repo.

### Plugin specifics

Run `:PlugInstall` to install all plugins.

#### Coc language server
Install the appropriate language server prior to its use.
```
:CocInstall coc-python
```

#### Markdown-preview
Start preview with :MarkdownPreview

When using WSL2 and markdown-preview, you need xdg-utils installed.
```
sudo apt-get install -y xdg-utils
```

After PlugInstall, you might get 'pre build and node is not found' as an error. If you do, run 
`:call mkdp#util#install()` from nvim, and it should work afterwards.

## Symlinks
Create symlinks to dotfiles in repo.
```
ln -s ~/repos/dotfiles/.config/nvim/ ~/.config/nvim
ln -s ~/repos/dotfiles/.bashrc ~/.bashrc
ln -s ~/repos/dotfiles/.tmux.conf ~/.tmux.conf
```

## Download/Enable plugins
Type `:PlugInstall` in nvim to install all plugins mentioned in
`.config/nvim/vim-plug/plugins.vim`.
