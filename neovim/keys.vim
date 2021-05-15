let mapleader = " "

" NERDTree
map <leader>e :NERDTreeFocus<CR>
map <leader>r :NERDTreeFind<CR>

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

" Faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>
nmap <Leader>s <Plug>(easymotion-s)

" Document
nnoremap <Leader>w :wa<CR>
nnoremap <Leader>q :q<CR>
