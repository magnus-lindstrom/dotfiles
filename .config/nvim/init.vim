source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim
source $HOME/.config/nvim/general/clipboard.vim
source $HOME/.config/nvim/plugin_configs/markdown-preview.vim
source $HOME/.config/nvim/vim-plug/plugins.vim

" must come after vim-plug sourcing
lua require('nvim-lspconfig_mappings')
