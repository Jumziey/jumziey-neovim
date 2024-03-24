if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1

function! RunTestForVimFile()
  source %
  Vader %:r.vader
endfunction

nmap <buffer> <F11> :call RunTestForVimFile()<CR>
nmap <buffer> <F12> :e %:r.vader<CR>
