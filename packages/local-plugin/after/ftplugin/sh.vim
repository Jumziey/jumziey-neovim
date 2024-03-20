if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1

map <buffer> <F9> :te!%:p<CR>

map <buffer> <F12> :execute "edit " . fnamemodify(expand('%:p'), ':r') . ".bats\n"<CR>
