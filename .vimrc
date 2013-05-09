" general settings

set tabstop=4
set smarttab
set smartindent
set smartcase
set incsearch
set nohlsearch
set showmode
set ruler
set history=10
set paste
set number
set spell spelllang=en_gb
set cuc
set cul
set nocompatible 
set encoding=utf-8
set laststatus=2
set guifont=Menlo\ For\ Powerline

" for vundle
filetype off
filetype plugin indent on

" syntax hilighting
syntax on

" colour settings
set background=dark
colorscheme solarized
hi SpellBad term=reverse ctermfg=white ctermbg=darkred guifg=#ffffff guibg=#7f0000 gui=underline
hi SpellCap guifg=#ffffff guibg=#7f007f
hi SpellRare guifg=#ffffff guibg=#00007f gui=underline
hi SpellLocal term=reverse ctermfg=black ctermbg=darkgreen guifg=#ffffff guibg=#7f0000 gui=underline

" powerline
set rtp+=/Users/matt/.vim/bundle/powerline/powerline/bindings/vim
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = 'fancy'
