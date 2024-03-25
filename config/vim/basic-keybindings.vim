"Dvorak
noremap t j
noremap n k
noremap s l
map <Space> <Leader>

"Window moving
"" Almost all modes
noremap <C-H> <C-W>h
noremap <C-T> <C-W>j
noremap <C-N> <C-W>k
noremap <C-S> <C-W>l
noremap <M-n> :resize +5<CR>
noremap <M-t> :resize -5<CR>

"" Term mode
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-t> <C-\><C-N><C-w>j
tnoremap <C-n> <C-\><C-N><C-w>k
tnoremap <C-s> <C-\><C-N><C-w>l
tnoremap <C-w> <C-\><C-n>

"link following
noremap <c-g> <c-]>
noremap <c-c> <c-o>

"tags following
noremap <c-g> <c-]>
noremap <c-c> :tselect<CR>

"Alternate
noremap <F12> :A<CR>

