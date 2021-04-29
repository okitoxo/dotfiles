set tabstop=2       
set shiftwidth=2    
set softtabstop=2   
set expandtab       

set number
set hidden
set nowrap
set cursorline
set termguicolors

"" Plugins

" Git gutter
set updatetime=100

" Gruvbox
colorscheme gruvbox
" set background=light
let g:gruvbox_contrast_light = 'hard'

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline#extensions#branch#enabled = 0
let g:airline_skip_empty_sections = 1
let g:airline_section_y=''

" LightLine
let g:lightline = {'colorscheme': 'gruvbox'}

" NERDTree
let NERDTreeShowHidden = 1

" Coc
autocmd CursorHold * silent call CocActionAsync('highlight')
set cmdheight=2

" Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

