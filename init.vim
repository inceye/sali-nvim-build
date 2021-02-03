
" the vim-autoload/install plugin
source $HOME/.config/nvim/vim-plug/plugins.vim

" the main settings
source $HOME/.config/nvim/general/settings.vim

" the main keybindings
source $HOME/.config/nvim/keys/mappings.vim

" Airline theme
source $HOME/.config/nvim/themes/airline.vim

" Color_vim + lua conf
lua require'plug-colorizer'

" Rainbow
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]

autocmd FileType * RainbowParentheses

" Startify Project Management
source $HOME/.config/nvim/plug-config/start-screen.vim
