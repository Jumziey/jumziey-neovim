function! DetectAndSetKustomizeFileType()
  if LinesContainKustomizeKindLine(getline(1,1000))
    set filetype=kustomize
  endif
endfunction

function! LinesContainKustomizeKindLine(lines)
  for line in a:lines
    if IsKustomizeKindLine(line)
      return 1
    endif
  endfor
  return 0
endfunction

function! IsKustomizeKindLine(line)
  return a:line =~ '^kind: Kustomization'
endfunction

au BufNewFile,BufRead *.{yaml,yml} call DetectAndSetKustomizeFileType()
