au BufNewFile,BufRead *.{yaml,yml} if getline(1) =~ '^kind: Kustomization' || getline(2) =~ '^kind: Kustomization' || getline(3) =~ '^kind: Kustomization' | set filetype=kustomize | endif
