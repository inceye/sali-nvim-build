" Better nav for omnicomplete
"inoremap <expr> <c-j> ("\<C-n>")
"inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else 
" XXX: proposed removal, messes up typing sometimes and handy ^C escape is
" already implemented
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS (removed as it collides with delete to ^ mapping)
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

" TAB in normal mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" Use control-c instead of escape
" A lot of those are removed because C-c already has a 
" function a little bit different
" from Esc that might be useful
"nnoremap <C-c> <Esc>
inoremap <C-c> <Esc>
"onoremap <C-c> <Esc>
"vnoremap <C-c> <Esc>
"cnoremap <C-c> <Esc>

" These options are not very good with as-you-type auto-completion, so I've
" removed them, They kinda mess up the default vim behavior
" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Enter selects menu item instead of inserting a caret return
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Easy omnicomplete
imap <leader>n <C-x><C-o>
imap <C-b> <C-x><C-o>

" Add empty string (collides with spellcheck keybinding)
"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Check file in shellcheck:
map <leader>s :!clear && shellcheck %<CR>

" Open my bibliography file in split
map <leader>b :vsp<space>$BIB<CR>
map <leader>r :vsp<space>$REFER<CR>

map <expr> <leader>a ToggleAutocomplete()
map <expr> <leader>c ToggleCompleteType()

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Replace all FAKE__tag__ with fake#gen({tag})
map <leader>f :FakeSubstitute<CR>

" Open nerd tree
map <leader>t :NERDTree<CR>
