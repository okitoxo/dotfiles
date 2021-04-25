call plug#begin(stdpath('data') . '/plugged')
" Visual
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

Plug 'Yggdroot/indentLine'

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
    \'coc-yaml',
    \'coc-pairs']

" Javascript syntax
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


call plug#end()

set termguicolors     " enable true colors support
set background=light
colorscheme gruvbox
let g:gruvbox_contrast_light = 'hard'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#format = 2

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

" Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

