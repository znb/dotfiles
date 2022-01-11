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
" Totally stole the above ANSI art from github.com/Gavinok

" General
syntax on
filetype indent on
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
set inccommand=split

" Completion
set completeopt-=preview
set completeopt+=noinsert,longest,menuone
set shortmess+=c

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
call plug#begin()
" Make Vim pretty
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'                   " Tmuxline
Plug 'arcticicestudio/nord-vim'                   " Tmuxline
" Make Vim better
Plug 'preservim/nerdtree'                     " Nerdtree
Plug 'tpope/vim-commentary'                   " Better commenting
Plug 'Yggdroot/indentLine'                    " Shows indentation lines
Plug 'godlygeek/tabular'                      " Better tabs
Plug 'luochen1990/rainbow'                    " Rainbow parenthesis
Plug 'tmhedberg/SimpylFold'                   " Better code folding
Plug 'plasticboy/vim-markdown'                " Better Markdown support
Plug 'junegunn/fzf'                           " Fuzzy finder
Plug 'junegunn/fzf', {'do': {->fzf#install()}} " More FZF
Plug 'junegunn/fzf.vim'                       " Even more FZF
Plug 'voldikss/vim-floaterm'                  " Terminal
" Better coding
Plug 'lifepillar/vim-mucomplete'              " Simple autocompletion
Plug 'davidhalter/jedi-vim'                   " Autocompletion for Python
Plug 'vim-syntastic/syntastic'                " Syntax checking
Plug 'airblade/vim-gitgutter'                 " Git stuff in gutter
Plug 'tpope/vim-fugitive'                     " Basic Git integration
Plug 'hashivim/vim-terraform'                 " Terraform stuff
call plug#end()

" Set theme
colorscheme nord

" Leader Mappings
let mapleader=" "

" Quit/Save
nnoremap <Leader>w :w<CR>
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
nnoremap <Leader>fl :BLines<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fg :GFiles %:p:h<CR>
nnoremap <Leader>fm :Marks<CR>

" Clear highlighting
nnoremap <Leader>h :set hlsearch!<CR>

" Toggle relative numbers
nnoremap <Leader>r :set relativenumber!<CR>

" Toggle lazy redraw
nnoremap <Leader>lr :set lazyredraw!<CR>

" Spelling
nnoremap <Leader>ss :set spell!<CR>
nnoremap <Leader>s ]s
nnoremap <Leader>z 1z=

" Terminal
nnoremap <Leader>t :FloatermNew<CR>
nnoremap <Leader>tp :FloatermNew python3<CR>

" Code folding
nnoremap <Leader>f zo
nnoremap <Leader>g zc

" Commentary
nnoremap <Leader>c :Commentary<CR>

" Markdown concealing
nnoremap <Leader>m0 :set conceallevel=0<CR>
nnoremap <Leader>m2 :set conceallevel=2<CR>

" MUcomplete 
" imap <c-j> <plug>(MUcompleteCycFwd)
" imap <c-k> <plug>(MUcompleteCycBwd)

"
" Other mappings
"

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

" MUcomplete
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#chains = {
	    \ 'default' : ['path', 'omni', 'keyn'],
	    \ 'vim'     : ['path', 'cmd', 'keyn']
	    \ }

" airline settings
let g:airline_theme = 'nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1

" Floatterm
let g:floaterm_autoclose = 1
let g:floaterm_keymap_toggle = '<Leader>tt'

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
let g:jedi#popup_on_dot = 0
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

