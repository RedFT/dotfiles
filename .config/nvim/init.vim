call plug#begin('~/.config/nvim/bundle')
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'
Plug 'anyakichi/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-markdown'
Plug 'christoomey/vim-titlecase'

Plug 'nelstrom/vim-markdown-folding'

Plug 'scrooloose/nerdtree'

"Proper Folding For Python 
Plug 'tmhedberg/SimpylFold'

"Markdown 
Plug 'euclio/vim-markdown-composer'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Snippets
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'michaeljsmith/vim-indent-object'

"Gruvbox Color Scheme
Plug 'morhetz/gruvbox'
call plug#end()


""""""""""""""""""""""Configurations
set expandtab ts=4 et sw=4 tw=90 cc=90 nowrap
syntax on
filetype indent on
set number
set hidden
set cursorline

"Allows live highlighting of search (VIM8 or NEOVIM)
set inccommand=nosplit

"Airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts            = 1

"Set colorscheme 
colo gruvbox
set background=dark


""""""""""""""""""""""MY KEYBINDINGS
"Keybindings to make vim configuration easier
nnoremap <silent><leader>ev :edit   $MYVIMRC <CR>
nnoremap <silent><leader>sv :source $MYVIMRC <CR>
nnoremap <leader>sn :edit   ~/.config/nvim/bundle/vim-snippets/snippets/

"Line swaps
"(below)
nnoremap - ddpk
"(above)
nnoremap _ ddkPj

"Capitalizes inner word
inoremap <silent><C-u> <Esc>viwUea
nnoremap <silent><C-u> viwU

"Buffer List Navigation
nnoremap <C-j> :e 
nnoremap <silent><C-k> :bd! <CR>
nnoremap <silent><C-h> :bp! <CR>
nnoremap <silent><C-l> :bn! <CR>

" Remove highlighting after search
nnoremap <silent><C-n> :nohlsearch <CR>

"parens operation-pending mappings
onoremap <silent>in( :<c-u>normal! f(vi(<CR>
onoremap <silent>il( :<c-u>normal! F)vi(<CR>
onoremap <silent>an( :<c-u>normal! f(va(<CR>
onoremap <silent>al( :<c-u>normal! F)va(<CR>

" Use space bar to navigate between foldable elements in document!
nnoremap  <silent><Space> zj
nnoremap  <silent><C-Space> zk

"inside next/last email address (works for ordinary email addresses)
onoremap <silent>in@ :<c-u>execute "normal! /[^@ ]\\+@[^@ ]\\+\rgn"<CR>
onoremap <silent>il@ :<c-u>execute "normal! ?[^@ ]\\+@[^@ ]\\+\rgn"<CR>

"Disable Arrow Keys
noremap    <Left>    <nop>
noremap    <Right>   <nop>
noremap    <Up>      <nop>
noremap    <Down>    <nop>

"Tabularize hotkey
noremap <S-t> :Tabularize /
nnoremap <silent><leader>nto :NERDTree<CR>
nnoremap <silent><leader>ntf :NERDTreeFocus<CR>
nnoremap <silent><leader>ntc :NERDTreeClose<CR>


""""""""""""""""""""""MY ABBREVIATIONS
iabbrev @@@ norbu.tsering.cs@gmail.com

noremap <S-t> :Tabularize /


""""""""""""""""""""""MY AUTOCOMMANDS
augroup filetype_markdown
    autocmd!
    autocmd FileType markdown call MakeMarkdownBindings()
    function! MakeMarkdownBindings()
        onoremap <buffer> ih1 :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
        onoremap <buffer> ah1 :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
        onoremap <buffer> ih2 :<c-u>execute "normal! ?^--\\+$\r:nohlsearch\rkvg_"<cr>
        onoremap <buffer> ah2 :<c-u>execute "normal! ?^--\\+$\r:nohlsearch\rg_vk0"<cr>
    endfunction
augroup END
