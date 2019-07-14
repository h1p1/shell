syntax enable

set nocompatible
set noswapfile
set nowrap
set number
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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'whatyouhide/vim-gotham'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'jiangmiao/auto-pairs'
Plugin 'w0rp/ale'
Plugin 'junegunn/vim-easy-align'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'StanAngeloff/php.vim'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'posva/vim-vue'
Plugin 'jwalton512/vim-blade'

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
nnoremap <C-i> :CtrlPTag<CR>

" tagbar configuration
nnoremap <C-m> :TagbarToggle<CR>

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

" nerdtree configuration
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :tabe .<CR>
nnoremap <C-[> :tabprevious<CR>
nnoremap <C-]> :tabnext<CR>

" omnisearch configuration
set completeopt=longest,menuone

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'

" source ~/.colorscheme.vim
colorscheme gruvbox
let g:gruvbox_contrast_dark= "soft"
set bg=dark

" colorscheme gotham
" let g:gotham_airline_emphasised_insert = 0

autocmd FileType vue syntax sync fromstart
autocmd FileType php syntax sync fromstart
