if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1

map <buffer> <F12> :execute "edit " . fnamemodify(expand('%:p'), ':r') . ".sh"<CR>
