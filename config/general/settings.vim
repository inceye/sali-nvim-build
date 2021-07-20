" set leader key
let g:mapleader = "`"

syntax enable                           " Enables syntax highlighting
set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                             " Display long lines as just one line (is incredibly annoying and just bad)
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes pop-up menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set guicursor=                          " Set cursor shape to rectangle
let g:airline_powerline_fonts = 1       " Enable airline arrow thingies
set nofoldenable                        " Disable folding as it is annoying
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces           XXX: proposed removal
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set background=dark                     " tell vim what the background color looks like
set showtabline=2                       " Always show tabs
set nobackup                            " This is recommended by coc        XXX: proposed removal
set nowritebackup                       " This is recommended by coc        XXX: proposed removal
set updatetime=300                      " Faster completion                 XXX: proposed removal
set timeoutlen=500                      " By default timeoutlen is 1000 ms  XXX: proposed removal
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
"set autochdir                          " Your working directory will always be the same as your working directory
set path+=**                            " Path hack that adds all files from all subdirectories to your path

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

" You can't stop me
cmap w!! w !sudo tee %