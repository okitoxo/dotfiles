set tabstop=2       
set shiftwidth=2    
set softtabstop=2   
set expandtab       

set number
set hidden
set nowrap
set cursorline
set termguicolors

" Search
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set noshowmode

"" Plugins

" Git gutter
set updatetime=100

" Gruvbox
let g:gruvbox_contrast_light = 'soft'
autocmd vimenter * ++nested colorscheme gruvbox
set background=light
highlight Normal ctermbg=NONE

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline#extensions#branch#enabled = 0
let g:airline_skip_empty_sections = 1
let g:airline_section_y=''

" NERDTree
let NERDTreeShowHidden = 1
let NERDTreeDirArrows = 1
let NERDTreeQuitOnOpen = 1
" Coc
autocmd CursorHold * silent call CocActionAsync('highlight')
set cmdheight=2

" Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Prevent replace window NERDTree
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
