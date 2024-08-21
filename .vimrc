" Neovim sourcing from /Users/Brad/.local/share/nvim/
set smartindent
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set nocompatible              " be iMproved, required
set number
set colorcolumn=80
let mapleader=","
set nowrap
" set foldenable
" set ignorecase
" syntax on
"
filetype off                  " required
set viewoptions=cursor,folds,slash,unix

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
set number relativenumber

autocmd FileType typescript map <buffer> <leader>; :w<CR>:exec '!ts-node' shellescape(@%, 1)<CR>
autocmd FileType typescript imap <buffer> <leader>; <esc>:w<CR>:exec '!ts-node' shellescape(@%, 1)<CR>
autocmd FileType javascript map <buffer> <leader>; :w<CR>:exec '!open' shellescape(expand('%:p:h').'/index.html', 1)<CR>
autocmd FileType javascript imap <buffer> <leader>; <esc>:w<CR>:exec '!open' shellescape(expand('%:p:h').'/index.html', 1)<CR>
autocmd FileType python map <buffer> <leader>; :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <leader>; <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType tex map <buffer> <leader>; :w<CR>:VimtexCompile<CR>
autocmd FileType tex imap <buffer> <leader>; <esc>:w<CR>:VimtexCompileCR>
autocmd FileType matlab map <buffer> <leader>; :w<CR>:exec '!/Applications/MATLAB_R2021b.app/bin/matlab -nodisplay -nodesktop -nosplash' shellescape(@%, 1)<CR>
autocmd FileType matlab imap <buffer> <leader>; <esc>:w<CR>:exec '!/Applications/MATLAB_R2021b.app/bin/matlab -nodisplay -nodesktop -nosplash' shellescape(@%, 1)<CR>
nmap H ^
nmap L g_
vmap H ^
vmap L g_
map fj 10j
vmap fj 10j
map fk 10k
vmap fk 10k
map <leader>' :ALEFix<CR>
imap jj <Esc>
imap ZZ <Esc>:wq<CR>

set tabstop=4 shiftwidth=4 expandtab

" FUNCTIONS #############

" add an auto-source command
fu! Cabbrev(key, value)
  exe printf('cabbrev <expr> %s (getcmdtype() == ":" && getcmdpos() <= %d) ? %s : %s',
    \ a:key, 1+len(a:key), string(a:value), string(a:key))
endfu
call Cabbrev('ref', 'source ~/.vimrc')
call Cabbrev('vimrc', 'tabe ~/.vimrc')
call Cabbrev('zrc', 'tabe ~/.zshrc')
call Cabbrev('epr', 'r ~/.vim/.processEPR.py')
call Cabbrev('imports', 'r ~/.vim/.pyImports.py')
call Cabbrev('main', 'r ~/.vim/.pyMain.py')
" call Cabbrev('bp', 'r ~/.vim/.pyImports.py<CR>ggddG:r ~/.vim/.pyMain.py _i<Enter><Esc>')
call Cabbrev('bp', 'r ~/.vim/.pyImports.py<CR>ggddG:r ~/.vim/.pyMain.py <Esc>_i<Enter><Enter><Esc>')
call Cabbrev('sci', 'r ~/.vim/.pySci.py<CR>')
call Cabbrev('misc', 'r ~/.vim/.misc.py')
call Cabbrev('TODO', 'sp ~/.vim/.TODO.md')
call Cabbrev('todo', 'cd %:p:h<CR>:sp .todo.md')

call plug#begin()
""""""""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
Plug 'lervag/vimtex'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-highlightedyank'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf.vim'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'aserebryakov/vim-todo-lists'
Plug 'wellle/targets.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
" Req dependencies for telescope (fuzzy finder)
Plug 'nvim-lua/plenary.nvim'
" Req dependencies for telescope (fuzzy finder)
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" Plug 'folke/flash.nvim' "can't really get this plugin to work"

nmap <silent> <C-s> <Plug>(pydocstring)
let g:indentLine_char = '┊'

set rtp+=/usr/local/opt/fzf
let CurlineLineNR = 1
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
" let $FZF_DEFAULT_OPTS='--reverse'
let g:highlightedyank_highlight_duration = 500
let g:AutoPairsShortcutFastWrap = 'df'
let g:SuperTabDefaultCompletionType = "<c-n>"
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
let g:pyrope_mode = 0
let g:tex_flavor='pdflatex'

map s <plug>(easymotion-prefix)
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nmap <leader>gs :G<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gp :Gpush<CR>
autocmd StdinReadPre * let s:std_in=1

Plug 'heraldofsolace/nisha-vim'
Plug 'joshdick/onedark.vim'
Plug 'projekt0n/github-nvim-theme'

Plug 'anuvyklack/pretty-fold.nvim'

call plug#end()
" set foldnestmax=4
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldclose=all

nmap <space> za

augroup user_colors
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END

" colorscheme onedark
colorscheme nisha
" colorscheme github_dark_dimmed
" colorscheme gruvbox
filetype plugin indent on    " required
set termguicolors

" let g:pymode_rope = 0
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
set updatetime=500
let g:lightline = {
	\ 'colorscheme': 'one',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
	\ },
	\ 'component_function': {
	\   'cocstatus': 'coc#status'
	\ },
	\ }

  " Use autocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

nnoremap <c-f> <esc>:Lex<cr>:vertical resize 25<cr>
inoremap <c-f> <esc>:Lex<cr>:vertical resize 25<cr>
nnoremap <c-g> <cmd>Telescope live_grep<cr>
inoremap <c-g> <esc><cmd>Telescope live_grep<cr>

autocmd VimEnter * if !argc() | Lex | vertical resize 50 | endif 
let g:python3_host_prog='/Users/Brad/miniforge3/bin/python'
