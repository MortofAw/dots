"Почати шукати плагіни в цій директорії~~~~~~~~~~~~~~
call plug#begin('~/.vim/bundle')
"files tree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
"autocomplete
Plug 'ycm-core/YouCompleteMe'
"symbols pairing
Plug 'jiangmiao/auto-pairs'
"search and accord to one character
Plug 'easymotion/vim-easymotion'
"searching smth in file
Plug 'rking/ag.vim'
"button line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"icons
Plug 'ryanoasis/vim-devicons'
"colors visualizer
Plug 'ap/vim-css-color'
"for search in big files
Plug 'preservim/tagbar'
"vim-multiple-cursors
"start: <C-n> start multicursor and add a virtual cursor + selection on the match
" next: <C-n> add a new virtual cursor + selection on the next match
" skip: <C-x> skip the next match
" prev: <C-p> remove current virtual cursor + selection and go back on previous match
" select all: <A-n> start multicursor and directly select all matches
Plug 'terryma/vim-multiple-cursors'
Plug 'makerj/vim-pdf'
Plug 'pbrisbin/vim-colors-off'
call plug#end()

"multicursor
let g:multi_cursor_use_default_mapping=0
set clipboard=unnamedplus

" Default mapping
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
let g:airline_theme='minimalist'

"for airline~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
let g:airline_enable_fugitive=1
let g:airline_enable_syntastic=1
let g:airline_enable_bufferline=1

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_symbols.space = "\ua0"

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:mapleader=" "
map <S-n> :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let g:NERDTreeFileLines = 1
let NERDTreeShowHidden=1

map <Leader> <Plug>(easymotion-prefix)

"tagbar
nnoremap <F9> :TagbarToggle<Esc>

"Esc key remapping
inoremap jk <Esc>

set exrc 
set secure

"set ruler
set nocompatible

"filetype plugin on
filetype plugin indent off
set number

"set relativenumber
set guifont=DejaVuSansMono:h13
set background=dark
colorscheme iceberg 
colorscheme off

"syntax check -> set spell
syntax on
set syntax=c

set termguicolors

set colorcolumn=""

set tabstop=4

set whichwrap=b,s,>,<,[,]

set mouse=a
set scrolloff=7

set colorcolumn=80

set noswapfile

let &t_SI.="\e[6 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[2 q" "EI = нормальный режим

set backspace=indent,eol,start
set hlsearch
set incsearch
set shiftwidth=4
set smarttab
set noexpandtab
set smartindent
set confirm
set ttimeoutlen=0
set laststatus=2
set noshowmode
set showcmd
set encoding=utf-8
set fencs=utf-8,cp1251,koi8-u,koi8-r,ucs-2,cp866
set autochdir       "автоматично змінює робочу директорію (cd %:h - for manual)
"set cursorline

"UNDO-REDO history
if version >= 700
        set history=64
        set undolevels=128
        set undodir=~/.vim/undodir/
        set undofile
        set undolevels=1000
        set undoreload=10000
endif

"Якщо vim-plug не встановлений
if empty(glob('~/.vim/autoload/plug.vim'))
        "Створюємо директорію
        silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        "І скачуємо його звідти
        "Після чого запускаємо команду PlugInstall
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

nnoremap gm :w<cr> :LivedownToggle<CR>
" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 0

" should the browser window pop-up upon previewing
let g:livedown_open = 1

" the port on which Livedown server will run
let g:livedown_port = 1337

"using ru in normal mode
map ' `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ї ]
map ф a
map і s
map в d
map а f
map п g
map р h
map о j
map о j
map л k 
map л k
map д l
map ж ;
map є '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map ʼ ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ї }
map Ф A
map І S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
map . /


