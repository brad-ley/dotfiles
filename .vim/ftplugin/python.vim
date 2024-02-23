set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

syntax on
let python_highlight_all=1
let g:ale_sign_column_always=1
" let g:ale_set_highlights=0

set foldmethod=indent
set foldnestmax=2

nnoremap ci' ci"
nnoremap vi' vi"
nnoremap di' di"

" let g:ale_fixers = {'python':['prettier', 'autopep8', 'isort', 'add_blank_lines_for_python_control_statements', 'yapf']}
" let g:ale_fixers = {'python':['autopep8', 'prettier']}
" let g:ale_fixers = {'python':['black']}
" let b:ale_linters = {'python':['pylint']}
" let g:ale_linters = {'python':['ruff', 'pycodestyle']}
