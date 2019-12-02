" General
set shell=/bin/zsh

" Colours
syntax on
set termguicolors
set background=dark
colorscheme solarized8
set laststatus=2

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
call minpac#add('lifepillar/vim-solarized8')
call minpac#add('Yggdroot/indentLine')
call minpac#add('dense-analysis/ale')
call minpac#add('ncm2/ncm2')
call minpac#add('roxma/nvim-yarp')
call minpac#add('ncm2/ncm2-bufword')
call minpac#add('ncm2/ncm2-path')

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
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'

" NCM2
augroup NCM2
  autocmd!
  autocmd BufEnter * call ncm2#enable_for_buffer()
  set completeopt=noinsert,menuone,noselect
augroup END


" indentLine
let g:indentLine_char = '┊'

" ALE
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_linters = {'python': ['flake8']}

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
