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
Plug 'redft/vim-airline-themes'

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

set inccommand=nosplit

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

"Buffer Navigation
noremap <C-j> :e 
noremap <silent><C-k> :bd! <CR>
noremap <silent><C-h> :bp! <CR>
noremap <silent><C-l> :bn! <CR>

noremap <leader>nt :NERDTreeToggle<CR>

"Tabularize hotkey
noremap <S-t> :Tabularize /

" Remove highlighting after search
noremap <silent><C-n> :nohlsearch <CR>
