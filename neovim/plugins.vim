call plug#begin(stdpath('data') . '/plugged')
" Visual
Plug 'ayu-theme/ayu-vim'
Plug 'ryanoasis/vim-devicons'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tools
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \'coc-eslint',
    \'coc-prettier',
    \'coc-css',
    \'coc-cssmodules',
    \'coc-highlight',
    \'coc-html',
    \'coc-html-css-support',
    \'coc-svg',
    \'coc-yaml']

" Javascript syntax
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


call plug#end()

set termguicolors     " enable true colors support
let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme
colorscheme ayu
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#format = 2

let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1

" Git
set updatetime=100

" Coc
autocmd CursorHold * silent call CocActionAsync('highlight')
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set cmdheight=2
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
