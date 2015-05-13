set nocompatible              " be iMproved, required
filetype off                  " required
execute pathogen#infect()
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
Plugin 'kien/ctrlp.vim'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
" Plugin 'ns9tks/vim-l9'
" Plugin 'ns9tks/vim-autocomplpop'
" Plugin 'jistr/vim-nerdtree-tabs'

" Plugin 'vim-erlang/vim-erlang-omnicomplete'

" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
colorscheme badwolf 
syntax enable
set ruler
set matchpairs+=<:>
set matchpairs+={:}
set backspace=indent,eol,start

set tabstop=4

set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set showmatch
set foldenable

set hlsearch
nmap <F4> :set hlsearch! hlsearch?<CR>


set selectmode=mouse
set showtabline=2
set splitbelow
" set synmaxcol=100
" " set virtualedit=block
set antialias
set autoindent
set autoread
set backspace=indent,start,eol
set browsedir=buffer
set bufhidden=hide
set statusline=%<%f\ %y%w%q%m%r%=%-14.(%l,%c%V%)\ %P



" call MkdirIfNeeded(vim_cache . '/backup', 'p', 0700)
" let &backupdir = vim_cache . '/backup'
" set backup

set selectmode=mouse
set showtabline=2
set splitbelow
set antialias
set autoindent
set autoread
set backspace=indent,start,eol
set browsedir=buffer
set bufhidden=hide


autocmd StdinReadPre * let s:std_in=1

map <C-n> :NERDTreeTabsToggle<CR>

let mapleader = "-"
nnoremap <leader>0 :tabnext<CR>
nnoremap <leader>= :tabprev<CR>

" CtrlP mappings 7 settings
nnoremap <leader>p :CtrlP<CR>
let g:ctrlp_prompt_mappings = {
    \'AcceptSelection("e")': ['<c-t>'],
    \'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
\}


:set omnifunc=csscomplete#CompleteCSS

" opens tab at the end
" autocmd BufNew * if winnr('$') == 1 | tabmove99 | endif
" autocmd BufNew * execute ":tabmove99"
"
"
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
