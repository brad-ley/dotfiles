" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2

set statusline+=%#warningmsg#
set statusline+=%*

let g:ale_fixers = ['prettier', 'latexindent']
" let g:ale_linters = ['texlab']

let g:vimtex_compiler_method ='latexmk'
let g:vimtex_compiler_latexmk = {
            \ 'options' : [
            \   '-shell-escape',
            \ ],
            \}
let g:Tex_MultipleCompileFormats='pdf,bib,pdf'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_autoclose_after_keystrokes=5
" let g:vimtex_quickfix_mode=0
set conceallevel=1
set wrap
"set colorcolumn
let g:tex_conceal='abdmg'

setlocal spell
set spelllang=en_us
map <buffer> K <Plug>(vimtex-doc-package)

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
