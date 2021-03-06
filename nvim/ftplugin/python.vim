" Special options for python
setlocal nowrap
setlocal colorcolumn=79
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal smarttab
setlocal expandtab

let g:python_highlight_all = 1

" Syntastic settings
let b:syntastic_python_pylint_args='--rcfile $XDG_CONFIG_HOME/pylint/pylintrc'

" Find an assert that has a paren and remove the parens
function! StripAssert()
	" Save wrapscan settings and turn it fof. This allows us to stop when the
	" end of the file is reached.
	let l:wrap = &ws
	set nowrapscan

	" Go to the top of the file
	execute "normal! gg"
	" Unfold everything
	execute "normal! zR"

	while(1)
		try
			" Go to the next instance of 'assert(', go to the first ( and
			" replace it with a space, then to to the end and remove that
			" character
			execute "normal! /assert(\<cr>f(r $x"
		" Catch no more occurances and stop
		catch /^Vim\%((\a\+)\)\=:E385/
			break
		endtry
	endwhile

	" Refold everything
	execute "normal! zM"

	" Restore wrapscan to whatever it was before
	let &ws = l:wrap
endfunction
