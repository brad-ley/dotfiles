set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

syntax on
let python_highlight_all=1
let g:ale_sign_column_always=1

set foldmethod=syntax
set foldnestmax=2

let b:ale_fixers = ['prettier', 'autopep8', 'isort', 'add_blank_lines_for_python_control_statements', 'yapf']
" let b:ale_fixers = ['prettier', 'autopep8', 'add_blank_lines_for_python_control_statements', 'yapf']
" let b:ale_fixers = ['autopep8', 'isort']
let b:ale_linters = ['pylint']
" let b:ale_fixers = ['pylint', 'add_blank_lines_for_python_control_statements']
