if exists('b:did_after_ftplugin')
	finish
endif
let b:did_after_ftplugin = 1

function! RunTestForVaderFile()
  source %:r.vim
  Vader %
endfunction


nmap <buffer> <F11> :call RunTestForVaderFile()<CR>
nmap <buffer> <F12> :e %:r.vim<CR>

