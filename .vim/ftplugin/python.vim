set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4

syntax on
let python_highlight_all = 1

let b:ale_fixers = ['prettier', 'autopep8', 'isort', 'add_blank_lines_for_python_control_statements', 'yapf']

