
" the vim-autoload/install plugin
source $HOME/.config/nvim/vim-plug/plugins.vim

" the main settings
source $HOME/.config/nvim/general/settings.vim

" the main keybindings
source $HOME/.config/nvim/keys/mappings.vim

" Airline theme
source $HOME/.config/nvim/themes/airline.vim

" Color_vim + lua conf
" lua require'plug-colorizer'

" Beautiful colors in vim
source $HOME/.config/nvim/themes/beautiful.vim

" Rainbow
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses

" Startify Project Management
source $HOME/.config/nvim/plug-config/start-screen.vim

" Git integration
source $HOME/.config/nvim/plug-config/signify.vim

" Quickscope
source $HOME/.config/nvim/plug-config/quickscope.vim

" COC config
source $HOME/.config/nvim/plug-config/coc.vim
