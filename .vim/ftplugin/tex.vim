" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
" set iskeyword+=:'

set statusline+=%#warningmsg#
set statusline+=%*

let b:ale_fixers = ['prettier', 'latexindent']

let g:vimtex_compiler_progname='nvr'
let g:vimtex_compiler_method ='pdflatex'
let g:vimtex_compiler_latexmk = {
            \ 'options' : [
            \   '-shell-escape',
            \   '-bibtex',
            \ ],
            \}
let g:Tex_MultipleCompileFormats='pdf,bib,pdf'
let g:vimtex_view_method='general'
let g:vimtex_quickfix_mode=0
set conceallevel=1
set wrap
set colorcolumn=
let g:tex_conceal='abdmg'
" This is new style
call deoplete#custom#var('omni', 'input_patterns', {
      \ 'tex': g:vimtex#re#deoplete
      \})

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
