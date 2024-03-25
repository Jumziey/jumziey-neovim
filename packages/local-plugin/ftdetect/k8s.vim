function! DetectAndSetK8sFileType()
  if LinesAreFromK8sFile(getline(1,1000))
    set filetype=kubernetes
  endif
endfunction

function! LinesAreFromK8sFile(lines)
  let matches = { 'kind': 0, 'apiVersion': 0, 'metadata': 0}
  let numberOfK8sResources = 1
  for line in a:lines
    if line =~ "^kind:"
      let matches.kind += 1
    endif
    if line =~ "^apiVersion:"
      let matches.apiVersion += 1
    endif
    if line =~ "^metadata:"
      let matches.metadata += 1
    endif
    if line =~ "^---"
      let numberOfK8sResources += 1
    endif
  endfor

  if MatchesEqual(matches) && CorrectAmountOfMatches(matches, numberOfK8sResources)
    return 1
  endif
  return 0
endfunction

function! MatchesEqual(matches)
  return a:matches.kind == a:matches.apiVersion && a:matches.kind == a:matches.metadata
endfunction

function! CorrectAmountOfMatches(matches, numberOfK8sResources)
  return a:matches.kind == a:numberOfK8sResources
endfunction

au BufNewFile,BufRead *.{yaml,yml} call DetectAndSetK8sFileType()
