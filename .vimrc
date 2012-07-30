" general settings

set tabstop=4
set smarttab
set smartindent
set smartcase
set ignorecase
set incsearch
set smarttab
set nohlsearch
set showmode
set ruler
set history=10
set paste
set number
set spell spelllang=en_gb
filetype off
filetype plugin indent on

" mutt 
au BufRead /tmp/mutt-* set tw=72

" status line
set nocompatible 
set encoding=utf-8
set laststatus=2

" basic status line
set statusline=%F%m%r%h%w\ 
set statusline+=[%{strlen(&fenc)?&fenc:&enc}]
set statusline+=\ [line\ %l\/%L]          

" syntax hilighting
syntax on
syntax enable

" colour settings
set background=dark
colorscheme solarized

hi Comment term=bold ctermfg=6 guifg=Blue

"au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
"au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

hi SpellBad term=reverse ctermfg=white ctermbg=darkred guifg=#ffffff guibg=#7f0000 gui=underline
hi SpellCap guifg=#ffffff guibg=#7f007f
hi SpellRare guifg=#ffffff guibg=#00007f gui=underline
hi SpellLocal term=reverse ctermfg=black ctermbg=darkgreen guifg=#ffffff guibg=#7f0000 gui=underline
