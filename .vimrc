" Neovim sourcing from /Users/Brad/.local/share/nvim/
syntax on
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
filetype off                  " required
set viewoptions=cursor,folds,slash,unix
set foldclose=all
" set foldmethod=syntax
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

" nmap <c-f>f :FZF<CR>
" nmap <c-f><c-f> :FZF<CR>
" nmap <c-f>c :FZF /Users/Brad/Documents/Research/Code<CR>
" nmap <c-f><c-c> :FZF /Users/Brad/Documents/Research/Code<CR>
" nmap <c-f>c :FZF ..<CR>
" nmap <c-f><c-p> :FZF ..<CR>
" nmap <c-f> :FZF ~<CR>
" nmap <c-f>h :FZF ~<CR>
" nmap <c-f><c-h> :FZF ~<CR>

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

" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
call plug#begin()
""""""""""""""""""""""""""""""""""""
Plug 'easymotion/vim-easymotion'
" Plug 'VundleVim/Vundle.vim'
Plug 'lervag/vimtex'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
" Plug 'ervandew/supertab'
Plug 'jiangmiao/auto-pairs'
" Plug 'preservim/nerdtree'
" Plug 'vim-scripts/HTML-AutoCloseTag'
Plug 'machakann/vim-highlightedyank'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf.vim'
" Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }
Plug 'aserebryakov/vim-todo-lists'
Plug 'wellle/targets.vim'
" Plug 'davidhalter/jedi-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'
"
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'
"
" Plug 'Shougo/deoplete.nvim'
" Plug 'deoplete-plugins/deoplete-jedi'
"
" Plug 'mhartington/nvim-typescript', {'for': ['typescript', 'tsx'], 'do': './install.sh' }
" Plug 'leafgarland/typescript-vim'
"
" Plug 'RRethy/vim-illuminate'
Plug 'nvim-telescope/telescope.nvim'
" Req dependencies for telescope (fuzzy finder)
Plug 'nvim-lua/plenary.nvim'
" Req dependencies for telescope (fuzzy finder)
" Plug 'folke/flash.nvim'
""""""""""""""""""""""""""""""""""""
" nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>

" let g:python_host_prog = '/opt/anaconda3/bin/python'
" let g:python3_host_prog = '/opt/anaconda3/bin/python'
" let g:pydocstring_doq_path = '/opt/anaconda3/bin/doq'
nmap <silent> <C-s> <Plug>(pydocstring)
let g:indentLine_char = '┊'
" let g:SimpylFold_docstring_preview = 1
" let g:SimpylFold_fold_docstring = 0
" let g:SimpylFold_fold_import = 1
set rtp+=/usr/local/opt/fzf
let CurlineLineNR = 1
let g:fzf_layout = {'window': {'width': 0.8, 'height': 0.8}}
" let $FZF_DEFAULT_OPTS='--reverse'
let g:highlightedyank_highlight_duration = 500
let g:AutoPairsShortcutFastWrap = 'df'
" let g:airline#extensions#ale#enabled = 1
let g:SuperTabDefaultCompletionType = "<c-n>"
" let g:deoplete#enable_at_startiup = 0
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
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map <leader>t :NERDTreeToggle<CR>
" nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1

Plug 'heraldofsolace/nisha-vim'
" set rtp+=~/.vim/bundle/nisha-vim
" let g:airline_theme='nisha'

Plug 'projekt0n/github-nvim-theme'

" Plug 'morhetz/gruvbox'
" set rtp+=~/.vim/bundle/gruvbox

" call vundle#end()            " required
call plug#end()
" colorscheme github_dark_colorblind

augroup user_colors
  autocmd!
  autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
augroup END

colorscheme nisha
let g:airline_theme='nisha'
filetype plugin indent on    " required
set termguicolors

" set background=dark
" highlight link ALEVirtualTextWarning LineNr
" highlight link ALEWarningSign LineNr
" highlight link ALEErrorSign Constant
" highlight link ALEVirtualTextError Constant

" let g:ale_virtualtext_cursor=0
" let g:ale_set_highlights=0
" let g:ale_fix_on_save=1
" let g:ale_sign_column_always=1
" let g:ale_sign_error="✗"
" let g:ale_sign_warning="⚠"
" let g:ale_virtualtext_cursor=1
" let g:ale_change_sign_column_color=0
" let g:ale_use_neovim_diagnostics_api=0
let g:pymode_rope = 0
" let g:jedi#popup_on_dot = 0
" let g:jedi#show_call_signatures = "0"
" Use K to show documentation in preview window
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

nnoremap <c-f> <esc>:Lex<cr>:vertical resize 30<cr>
inoremap <c-f> <esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-g> <cmd>Telescope live_grep<cr>
inoremap <c-g> <esc><cmd>Telescope live_grep<cr>
