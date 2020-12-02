syntax on
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
set foldmethod=indent
nmap <space> za

vnoremap . :normal .<CR>
nmap <leader><space> :noh<CR>
nmap 'h <C-w><C-h>
nmap 'j <C-w><C-j>
nmap 'k <C-w><C-k>
nmap 'l <C-w><C-l>
nmap 'o <C-w><C-o>
nmap '= <C-w><C-=>
nmap 'r <C-w><C-r>
imap zz <esc>zza

" Relative number
:set number relativenumber

autocmd FileType typescript map <buffer> <leader>; :w<CR>:exec '!ts-node' shellescape(@%, 1)<CR>
autocmd FileType typescript imap <buffer> <leader>; <esc>:w<CR>:exec '!ts-node' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> <leader>; :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <leader>; <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType tex map <buffer> <leader>; :w<CR>:VimtexCompile<CR>
autocmd FileType tex imap <buffer> <leader>; <esc>:w<CR>:VimtexCompileCR>
nmap H ^
nmap L g_
vmap H ^
vmap L g_
map <leader>j 10j
vmap <leader>j 10j
map <leader>k 10k
vmap <leader>k 10k
map <leader>' :ALEFix<CR>
imap jj <Esc>
imap ZZ <Esc>:wq<CR>

nmap <c-f>f :FZF<CR>
nmap <c-f><c-f> :FZF<CR>
nmap <c-f>c :FZF /Users/Brad/Documents/Research/Code<CR>
nmap <c-f><c-c> :FZF /Users/Brad/Documents/Research/Code<CR>
nmap <c-f>b :FZF /Users/Brad/Box\ Sync/Sherwin\ Lab<CR>
nmap <c-f><c-b> :FZF /Users/Brad/Box\ Sync/Sherwin\ Lab<CR>
nmap <c-f>g :FZF /Volumes/GoogleDrive/My\ Drive/Research<CR>
nmap <c-f><c-g> :FZF /Volumes/GoogleDrive/My\ Drive/Research<CR>
nmap <c-f>c :FZF ..<CR>
nmap <c-f><c-p> :FZF ..<CR>
nmap <c-f> :FZF ~<CR>
nmap <c-f>h :FZF ~<CR>
nmap <c-f><c-h> :FZF ~<CR>

set tabstop=4 shiftwidth=4 expandtab

" FUNCTIONS #############

" add an auto-source command
fu! Cabbrev(key, value)
  exe printf('cabbrev <expr> %s (getcmdtype() == ":" && getcmdpos() <= %d) ? %s : %s',
    \ a:key, 1+len(a:key), string(a:value), string(a:key))
endfu
call Cabbrev('refresh', 'source ~/.vimrc')
call Cabbrev('vimrc', 'tabe ~/.vimrc')
call Cabbrev('epr', 'r ~/.vim/.processEPR.py')
call Cabbrev('imports', 'r ~/.vim/.pyImports.py')
call Cabbrev('misc', 'r ~/.vim/.misc.py')
call Cabbrev('TODO', 'sp ~/.vim/.TODO.md')
call Cabbrev('todo', 'cd %:p:h<CR>:sp .todo.md')

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'davidhalter/jedi-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'mbbill/undotree'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'
Plugin 'Shougo/deoplete.nvim'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'vim-scripts/HTML-AutoCloseTag'
Plugin 'machakann/vim-highlightedyank'
Plugin 'Yggdroot/indentLine'
Plugin 'junegunn/fzf.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Konfekt/FastFold'
Plugin 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plugin 'aserebryakov/vim-todo-lists'
Plugin 'wellle/targets.vim'
""""""""""""""""""""""""""
" Stored Plugins
""""""""""""""""""""""""""
" Plugin 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_guide_size = 1
""""""""""""""""""""""""""
let g:pydocstring_doq_path = '/opt/anaconda3/bin/doq'
nmap <silent> <C-s> <Plug>(pydocstring)
let g:indentLine_char = '┊'
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 1
set rtp+=/usr/local/opt/fzf
let CurlineLineNR = 1
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'
let g:highlightedyank_highlight_duration = 500
let g:airline#extensions#ale#enabled = 1
let g:jedi#completions_enabled = 0 
let g:ale_fix_on_save = 0
let g:pyrope_mode = 0

let g:tex_flavor='pdflatex'

let g:AutoPairsShortcutToggle     = 'π' " <m-p>
" need to figure this out
let g:AutoPairsShortcutFastWrap   = 'df'
let g:AutoPairsShortcutJump       = '∆' " <m-j>
let g:AutoPairsShortcutBackInsert = '∫' " <m-b>
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray  ctermbg=236
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgray ctermbg=237
map s <plug>(easymotion-prefix)
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

Plugin 'heraldofsolace/nisha-vim'
set rtp+=~/.vim/bundle/nisha-vim

colorscheme nisha
let g:airline_theme='nisha'
set termguicolors

call vundle#end()            " required
filetype plugin indent on    " required
set background=dark
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
