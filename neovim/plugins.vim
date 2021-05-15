call plug#begin(stdpath('data') . '/plugged')
" Default values
Plug 'tpope/vim-sensible'
" Visual
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'psliwka/vim-smoothie'

" Indentation style
Plug 'Yggdroot/indentLine'

" Plug 'itchyny/lightline.vim'
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
" Plug 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Fzf
" Install bat for highlight syntax https://github.com/sharkdp/bat/releases
" Install Ag to searcher https://github.com/ggreer/the_silver_searcher
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'

call plug#end()

