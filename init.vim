" General
set shell=/bin/zsh

" Colours
syntax on
set termguicolors
set background=dark
colorscheme solarized8

" NO escape
inoremap jk <Esc>

" Searches
set incsearch
set nohlsearch
set ignorecase smartcase

" Enable line numbers
set number

" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" Cursors
set cuc
set cul
set ruler

" Plugin Management
packadd minpac
call minpac#init()

" Managed plugins (automatically installed and updated via "Pu" and "Pc")
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('plasticboy/vim-markdown')
call minpac#add('vim-syntastic/syntastic')
call minpac#add('lifepillar/vim-solarized8')

command! Pu call minpac#update()
command! Pc call minpac#clean()

" Backups
set backup
set backupdir=~/.config/nvim/backups
set directory=~/.config/nvim/swaps
if exists("&undodir")
	set undodir=~/.config/nvim/undo
endif
set writebackup

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" airline settings
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Python-mode
"let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_completion = 0
"let g:pymode_rope_complete_on_dot = 0
"let g:pymode_python = 'python'
"let g:pymode_rope_completion_bind = '<C-Space>'
"let g:pymode_lint_ignore = "E501,W,E101,C901"

" Mappings
let mapleader=";"
nnoremap ; :
noremap <Leader>w :w<CR>
noremap <Leader>e :wq<CR>
noremap <Leader>q :q!<CR>

" Clipboard functionality (paste from system)
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Spelling
nnoremap <leader>sp :set spell<CR>
nnoremap <leader>s ]s
nnoremap <leader>f 1z=
hi SpellBad cterm=underline gui=underline,bold

" Line numbers
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>

" Clear highlighting
nnoremap <leader>c :nohl<CR>

" Kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
