call plug#begin('~/.config/nvim/bundle')
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'tomtom/tcomment_vim'
Plug 'godlygeek/tabular'
Plug 'anyakichi/vim-surround'

"Markdown 
Plug 'euclio/vim-markdown-composer'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Snippets
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

"Color Schemes
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/seoul256.vim'
Plug '/NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-dispatch'

Plug 'wikitopian/hardmode'
call plug#end()
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

"Buffer Navigation
map <C-j> :e 
map <silent><C-k> :bd! <CR>
map <silent><C-h> :bp! <CR>
map <silent><C-l> :bn! <CR>

map <leader>nt :NERDTreeToggle<CR>

"Tabularize hotkey
map <S-t> :Tabularize /

set inccommand=nosplit

" Remove highlighting after search
map <silent><C-n> :nohlsearch <CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

set ts=8 et sw=4 sts=4
syntax on
filetype indent on
set number
set hidden
setlocal foldmethod=indent

colo gruvbox
set background=dark
