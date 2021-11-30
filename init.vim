"
" Matt / Juicebox .vimrc
" Mostly for macOS

" General
syntax on
filetype indent on
colorscheme tempus_warp
set termguicolors
set background=dark
set laststatus=2
set encoding=utf-8
set shell=/bin/zsh
set mouse=a
set nocompatible
set autoindent
set wildmenu
set hidden
set noerrorbells
set number
set relativenumber
set shiftround " shift stuff
set nowrap
set textwidth=79
set colorcolumn=85
set scrolloff=8
set signcolumn=yes
set cmdheight=1
set updatetime=40
set lazyredraw

" Tab settings
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

" Searches
set incsearch
set nohlsearch
set ignorecase smartcase

" Folding
set foldenable
set foldlevelstart=20
set foldnestmax=10
set foldmethod=indent

" Cursors
set cuc
set cul
set ruler

" Backups and swaps
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Show “invisible” characters
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Spelling
set nospell
set spelllang=en_gb
hi SpellBad cterm=underline gui=underline,bold

"
" Plug-in Management
"
packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('preservim/nerdtree')            " Nerdtree
call minpac#add('davidhalter/jedi-vim')          " Autocompletion
call minpac#add('airblade/vim-gitgutter')        " Git stuff in gutter
call minpac#add('Yggdroot/indentLine')           " Shows indentation lines
call minpac#add('godlygeek/tabular')             " Better tabs
call minpac#add('luochen1990/rainbow')           " Rainbow parenthesis
call minpac#add('python-mode/python-mode')       " Python stuff
call minpac#add('hashivim/vim-terraform')        " Terraform stuff
call minpac#add('vim-syntastic/syntastic')       " Syntax highlighting
call minpac#add('tpope/vim-fugitive')            " Basic Git integration
call minpac#add('tpope/vim-commentary')          " Better commenting
call minpac#add('tmhedberg/SimpylFold')          " Better code folding
call minpac#add('plasticboy/vim-markdown')       " Better Markdown support
call minpac#add('junegunn/fzf')                  " Fuzzy finder
call minpac#add('junegunn/fzf',{'do': {->fzf#install()}})       " More FZF
call minpac#add('junegunn/fzf.vim')              " Even more FZF
call minpac#add('edkolev/tmuxline.vim')          " Tmuxline
call minpac#add('glepnir/dashboard-nvim')        " Dashboard

" Managed plug ins (automatically installed and updated via "Pu" and "Pc")
command! Pu call minpac#update()
command! Pc call minpac#clean()

" Leader Mappings
let mapleader=" "

" Quit/Save
noremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :q!<CR>

" Mappings - buffers
nnoremap <Leader>bn :enew<CR>
nnoremap <Leader>bl :buffers<CR>
nnoremap <Leader>bq :bp <BAR> bd #<CR>
nnoremap <Leader>. :bnext<CR>
nnoremap <Leader>, :bprevious<CR>

" OS clipboard
vnoremap <Leader>y "+y
nnoremap <Leader>y "+y
nnoremap <Leader>p "+p
vnoremap <Leader>p "+p

" Vertical split and swap to it
nnoremap <Leader>v <C-w>v<C-w>l

" Scrollbind
nnoremap <Leader>sb :set scrollbind!<CR>

" FZF
nnoremap <Leader>ff :Files %:p:h<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fg :GFiles %:p:h<CR>

" Clear highlighting
nnoremap <Leader>h :nohl!<CR>

" Spelling
nnoremap <Leader>ss :set spell!<CR>
nnoremap <Leader>s ]s
nnoremap <Leader>z 1z=

" Nerdtree
nnoremap <Leader>t :NERDTreeFocus<CR>

" Code folding
nnoremap <Leader>f zo
nnoremap <Leader>g zc

" Commentary
nnoremap <Leader>c :Commentary<CR>

" Markdown concealing
nnoremap <Leader>m0 :set conceallevel=0<CR>
nnoremap <Leader>m2 :set conceallevel=2<CR>

"
" Other mappings
"

" FZF Open
nnoremap <C-p> :Files .<CR>

" Move lines
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" reselect pasted text
nnoremap gp `[v`]

" NO escape
inoremap jk <Esc>

" Nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-s> :NERDTreeFind<CR>

" Better copying
nnoremap Y y$

" Keep things centred
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Better undoing
inoremap , ,<C-g>u
inoremap . .<C-g>u
inoremap ! !<C-g>u
inoremap ? ?<C-g>u
inoremap " "<C-g>u

" Make . work with visual lines
vnoremap . :normal.<CR>

"
" Plugin Settings
"

"Rainbow parenthesis
let g:rainbow_active = 1

" airline settings
let g:airline_theme = 'molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint', 'flake8']
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" Python-mode
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_python = 'python3'
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_lint_ignore = "E501,W,E101,C901"

" Jedi-vim
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#completions_enabled = 1
let g:jedi#popup_select_first = 1
let g:jedi#completions_command = "<Leader>h"

" Terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_fmt_on_save=1

" indentLine
let g:indentLine_char = '┊'
let g:indentLine_fileTypeExclude = ['dashboard']

" Markdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

" FZF
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_buffers_jump = 1

" Dashboard
let g:dashboard_default_executive ='fzf'
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>
let g:dashboard_custom_shortcut={
\ 'last_session'       : 'SPC s l',
\ 'find_history'       : 'SPC f h',
\ 'find_file'          : 'SPC f f',
\ 'new_file'           : 'SPC c n',
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ }

"
" Autocmd 
"

" Disable auto commenting
autocmd BufNewFile,BufRead * setlocal formatoptions-=ro

" YAML indentation
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

" Start NERDTree when Vim is started without file arguments.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" flag extra white space
au BufRead,BufNewFile .py,.pyw,.c,.h match BadWhitespace /\s+$/

" Jedi-vim disable docstring window
autocmd FileType python setlocal completeopt-=preview

" Markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown set conceallevel=2
autocmd FileType markdown setlocal spell spelllang=en_gb

" Dashboard
autocmd FileType dashboard set showtabline=0 nolist| autocmd WinLeave <buffer> set showtabline=2


let g:dashboard_custom_header = [
    \'',
     \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣤⣴⣦⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
     \'⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⠿⠿⠿⠿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀ ',
     \'⠀⠀⠀⠀⣠⣾⣿⣿⡿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⢿⣿⣿⣶⡀⠀⠀⠀⠀ ',
     \'⠀⠀⠀⣴⣿⣿⠟⠁⠀⠀⠀⣶⣶⣶⣶⡆⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣦⠀⠀⠀ ',
     \'⠀⠀⣼⣿⣿⠋⠀⠀⠀⠀⠀⠛⠛⢻⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣧⠀⠀ ',
     \'⠀⢸⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⡇⠀ ',
     \'⠀⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀ ',
     \'⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡟⢹⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⣹⣿⣿⠀ ',
     \'⠀⣿⣿⣷⠀⠀⠀⠀⠀⠀⣰⣿⣿⠏⠀⠀⢻⣿⣿⡄⠀⠀⠀⠀⠀⠀⣿⣿⡿⠀ ',
     \'⠀⢸⣿⣿⡆⠀⠀⠀⠀⣴⣿⡿⠃⠀⠀⠀⠈⢿⣿⣷⣤⣤⡆⠀⠀⣰⣿⣿⠇⠀ ',
     \'⠀⠀⢻⣿⣿⣄⠀⠀⠾⠿⠿⠁⠀⠀⠀⠀⠀⠘⣿⣿⡿⠿⠛⠀⣰⣿⣿⡟⠀⠀ ',
     \'⠀⠀⠀⠻⣿⣿⣧⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⠏⠀⠀⠀ ',
     \'⠀⠀⠀⠀⠈⠻⣿⣿⣷⣤⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⠟⠁⠀⠀⠀⠀ ',
     \'⠀⠀⠀⠀⠀⠀⠈⠛⠿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀ ',
     \'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
     \]
