syntax enable
colorscheme github

set tabstop=4
set softtabstop=4
set expandtab

set number
set showcmd
set cursorline
filetype indent on
set wildmenu  
set lazyredraw
set showmatch

set foldenable
set foldlevelstart=10
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za

set foldmethod=indent   " fold based on indent level


" pathagen
execute pathogen#infect()


" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
