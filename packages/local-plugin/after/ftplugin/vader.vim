if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1


nmap <buffer> <F11> :Vader<CR>
nmap <buffer> <F12> :e %:r.vim<CR>

