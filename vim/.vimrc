syntax enable

set nocompatible
set noswapfile
set number
set cursorline
set incsearch                  
set ignorecase
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent                 
set smartindent                
set splitbelow
set splitright

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'w0rp/ale'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'StanAngeloff/php.vim'
Plugin 'posva/vim-vue'

call vundle#end()            
filetype plugin indent on

" utilsnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ctrlp configuration
let g:ctrlp_map = '<c-o>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor\|node_modules'
  \ }

" ale configuration 
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}

" easy align configuration
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
map <C-n> :NERDTreeToggle<CR>

source ~/colorscheme.vim
