" BASIC CONFIGURATION

" Remap Escape
inoremap jk <ESC>

" Remap the leader key to the spacebar
let mapleader = ";"

" Run commands with semicolon
nnoremap ; :

" Save the current buffer using the leader key
noremap <Leader>w :w<CR>

" Save and exit Vim using the leader key
noremap <Leader>e :wq<CR>

" Exit without saving using the leader key
noremap <Leader>q :q!<CR>

" Line numbers
set number

" Set the shell
set shell=/bin/zsh

" Clipboard functionality (paste from system)
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" Look and feel

"" PLUGIN MANAGEMENT
packadd minpac
call minpac#init()

" Managed plugins (automatically instaled and updated via "Pu" and "Pc")
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('altercation/vim-colors-solarized', {'type': 'opt', 'name': 'solarized'})

command! Pu call minpac#update()
command! Pc call minpac#clean()

"" ADDITIONAL CONFIGURATION
syntax on
set termguicolors
set background=dark
color solarized
let g:solarized_termcolors=256

" Airline 
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_solarized_bg='dark'

" Spelling
nnoremap <leader>sp :set spell<CR>
nnoremap <leader>s ]s
nnoremap <leader>f 1z=

" Line numbers
nnoremap <leader>n :set nonumber!<CR>
nnoremap <leader>rn :set norelativenumber!<CR>

" Clear highlighting
nnoremap <leader>c :nohl<CR>

" Paste mode
nnoremap <leader>pa :set nopaste!<CR>

" Pane navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Kill the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>l
