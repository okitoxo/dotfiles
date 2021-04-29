let mapleader = " "

" NERDTree
map ge :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>

" Buffer navigation
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" Fzf finder
nnoremap <silent> <Leader>p :GFiles<CR>
nnoremap <silent> <Leader>P :Ag<CR>
nnoremap <silent> <Leader>g :Commits<CR>

" Coc: GoTo code navigation.
inoremap <silent><expr> <c-space> coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Coc: Format Code
nnoremap <Leader>f :Prettier<CR>
" nmap <leader>f  <Plug>(coc-format-selected)

