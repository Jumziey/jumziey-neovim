if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1


"indenting
set tabstop=4 |
set softtabstop=4 |
set shiftwidth=4 |
set textwidth=79 |
set expandtab |
set autoindent |
set fileformat=unix

"Running script
map <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

