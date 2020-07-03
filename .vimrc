syntax on
set background=dark
set smartindent
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nocompatible              " be iMproved, required
set number
set colorcolumn=80
:let mapleader=","
:set nowrap
filetype off                  " required
set viewoptions=cursor,folds,slash,unix

vnoremap . :normal .<CR>
noremap <leader><space> :noh<CR>
noremap <leader>a <C-w><C-h>
noremap <leader>s <C-w><C-j>
noremap <leader>d <C-w><C-k>
noremap <leader>f <C-w><C-l>
noremap <leader>o <C-w><C-o>
imap zz <esc>zza

" Relative number
:set number relativenumber

autocmd FileType python map <buffer> <F11> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F11> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <leader>; :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <leader>; <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
nmap H ^
nmap L g_
vmap H ^
vmap L g_
map <leader>j 10j
vmap <leader>j 10j
map <leader>k 10k
vmap <leader>k 10k
map <buffer> <leader>' :ALEFix<CR>
imap jj <Esc>

set tabstop=4 shiftwidth=4 expandtab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
" Plugin 'ycm-core/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'mbbill/undotree'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/deoplete.nvim'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'vim-scripts/HTML-AutoCloseTag'
let g:jedi#completions_enabled = 0 
let g:deoplete#enable_at_startup = 1
let g:ale_fix_on_save = 0
let g:airline_theme='lucius'
let g:pyrope_mode = 0
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

Plugin 'dracula/vim', { 'name': 'dracula' }
set rtp+=~/.vim/bundle/dracula
Plugin 'dylanaraps/wal'
set rtp+=~/.vim/bundle/wal
Plugin 'morhetz/gruvbox'
set rtp+=~/.vim/bundle/gruvbox
Plugin 'joshdick/onedark.vim'
set rtp+=~/.vim/bundle/onedark.vim

colorscheme onedark

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
