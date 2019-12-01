" General
set shell=/bin/zsh

" Colours
syntax on
set background=dark
"colorscheme dracula

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
call minpac#add('dracula/vim')
call minpac#add('airblade/vim-gitgutter')
call minpac#add('plasticboy/vim-markdown')

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

" status bar
"set laststatus=2
"set encoding=utf-8
"set guifont=Hack
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\


" airline settings
let g:airline_theme = 'dracula'

" Syntastic
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Python-mode
"let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_completion = 0
"let g:pymode_rope_complete_on_dot = 0
"let g:pymode_python = 'python'
"let g:pymode_rope_completion_bind = '<C-Space>'
"let g:pymode_lint_ignore = "E501,W,E101,C901"

" Macros

" Mappings
let mapleader=";"
nnoremap ; :
noremap <Leader>w :w<CR>
noremap <Leader>e :wq<CR>
noremap <Leader>q :q!<CR>

" Clipboard functionality (paste from system)
vnoremap  <leader>y "+y
nnoremap  <leader>y "+y
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


