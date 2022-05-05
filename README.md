# Installation

Below steps will assume that this repo is installed in `~/repos/dotfiles`

## NeoVim
Neovim 0.6.0 is needed at the least. Can be installed from the stable ppa. See
updated info on `https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable`.
The plugin manager vim-plug, plus packages, are included in this repo.

### LSP servers
Python: python-lsp-server `pip install pyright`

### Plugin specifics
Run `:PlugInstall` to install all plugins.

#### Markdown-preview
Start preview with :MarkdownPreview

When using WSL2 and markdown-preview, you need xdg-utils installed.
```
sudo apt-get install -y xdg-utils
```

After PlugInstall, you might get 'pre build and node is not found' as an error. If you do, run 
`:call mkdp#util#install()` from nvim, and it should work afterwards.

### Vimspector
There might be a need to install some gadgets using the vimspector install command. Can't remember
at the time of writing this. It might also be that debugpy is automatically installed when
:PlugInstall.

## Symlinks
Create symlinks to dotfiles in repo.
```
ln -s ~/repos/dotfiles/.bashrc ~/.bashrc
ln -s ~/repos/dotfiles/.config/nvim/ ~/.config/nvim
ln -s ~/repos/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/repos/dotfiles/.vimspector.json ~/.vimspector_[vcc/general].json
```
OBS: there is currently no general version of the vimspector config file, must be created prior to
general use

## Download/Enable plugins
Type `:PlugInstall` in nvim to install all plugins mentioned in
`.config/nvim/vim-plug/plugins.vim`.
