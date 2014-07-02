" Special options for python
setlocal nowrap
setlocal colorcolumn=79
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal smarttab
setlocal expandtab

" Syntastic settings
" Unfortunately we get a choice between python2 and python3.
" Default to python2, use a local .vimrc to use python3
let g:syntastic_python_checkers=['python', 'pyflakes', 'pylint', 'pep8']
"let g:syntastic_python_python_exec='/usr/bin/python'
