"  ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄
" ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█
"  ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄
"   ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"    ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"    ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"    ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒
"      ░░   ▒ ░░      ░     ░░   ░ ░
"       ░   ░         ░      ░     ░ ░
"      ░                           ░
" Matt / Juicebox .vimrc
" Mostly for macOS

" General
syntax on
filetype indent on
colorscheme embark
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
set shiftround
set nowrap
set textwidth=0
set colorcolumn=85
set scrolloff=8
set signcolumn=yes
set cmdheight=2
set updatetime=40
set lazyredraw
set inccommand=split
set completeopt-=preview
set completeopt+=longest,menuone,noinsert
set omnifunc=syntaxcomplete#Complete
set complete-=i
set complete-=t

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
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
" Make Vim pretty
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('embark-theme/vim', { 'name': 'embark' })
call minpac#add('edkolev/tmuxline.vim')                   " Tmuxline
" Make Vim better
call minpac#add('preservim/nerdtree')                     " Nerdtree
call minpac#add('tpope/vim-commentary')                   " Better commenting
call minpac#add('Yggdroot/indentLine')                    " Shows indentation lines
call minpac#add('godlygeek/tabular')                      " Better tabs
call minpac#add('luochen1990/rainbow')                    " Rainbow parenthesis
call minpac#add('tmhedberg/SimpylFold')                   " Better code folding
call minpac#add('plasticboy/vim-markdown')                " Better Markdown support
call minpac#add('junegunn/fzf')                           " Fuzzy finder
call minpac#add('junegunn/fzf',{'do': {->fzf#install()}}) " More FZF
call minpac#add('junegunn/fzf.vim')                       " Even more FZF
" Better coding
call minpac#add('lifepillar/vim-mucomplete')              " Better autocompletion
call minpac#add('davidhalter/jedi-vim')                   " Autocompletion for Python
call minpac#add('vim-syntastic/syntastic')                " Syntax checking
call minpac#add('airblade/vim-gitgutter')                 " Git stuff in gutter
call minpac#add('tpope/vim-fugitive')                     " Basic Git integration
call minpac#add('hashivim/vim-terraform')                 " Terraform stuff

" Managed plug ins (automatically installed and updated via "Pu" and "Pc")
command! Pu call minpac#update()
command! Pc call minpac#clean()

" Leader Mappings
let mapleader=" "

" Quit/Save
noremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>q :conf q<CR>
nnoremap <Leader>E :q!<CR>

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
 
" Temp note 
nnoremap <Leader>n :tab drop /tmp/note.md<CR>

" FZF
nnoremap <Leader>ff :Files %:p:h<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fg :GFiles %:p:h<CR>

" Clear highlighting
nnoremap <Leader>h :set hlsearch!<CR>

" Toggle relative numbers
nnoremap <Leader>r :set relativenumber!<CR>

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
let g:airline_theme = 'embark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1

" MUComplete
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#chains = {
	    \ 'default' : ['path', 'omni', 'keyn', 'dict', 'uspl'],
	    \ 'vim'     : ['path', 'cmd', 'keyn']
	    \ }
let g:mucomplete#wordlist = { '': ['matthewerasmus@protonmail.com', 'Matt', 'Erasmus'], }

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint', 'flake8']
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" Jedi-vim
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#completions_enabled = 1
let g:jedi#popup_select_first = 1
let g:jedi#popup_on_dot = 1
let g:jedi#completions_command = "<Leader>k"
let g:jedi#goto_command = "<leader>d"

" Terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_fmt_on_save=1

" indentLine
let g:indentLine_char = '┊'

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
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }
let g:fzf_layout = { 'down':  '25%'}
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_buffers_jump = 1

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

" Skeletons
autocmd BufNewFile *.py 0r ~/.config/nvim/skeletons/python.py
autocmd BufNewFile *.sh 0r ~/.config/nvim/skeletons/bash.sh

" flag extra white space
au BufRead,BufNewFile .py,.pyw,.c,.h match BadWhitespace /\s+$/

" Jedi-vim disable docstring window
autocmd FileType python setlocal completeopt-=preview

" Markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown set conceallevel=2
autocmd FileType markdown setlocal spell spelllang=en_gb

