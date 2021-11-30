# Vimrc Mappings

Leader is "space"

### NO escape
```
jk <Esc>
```


### Quit/Save
```
<Leader>w :w<CR>
<Leader>wq :wq<CR>
<Leader>q :q<CR>
<Leader>e :q!<CR>
```

### Mappings - buffers
```
<Leader>bn :enew<CR>
<Leader>bl :buffers<CR>
<leader>bq :bp <BAR> bd #<CR>
<Leader>. :bnext<CR>
<Leader>, :bprevious<CR>
```

### OS clipboard
```
<Leader>y "+y
<Leader>y "+y
<Leader>p "+p
<Leader>p "+p
```

### Vertical split and swap to it
```
<Leader>v <C-w>v<C-w>l
```

### Scrollbind
```
<Leader>sb :set scrollbind!<CR>
```

### Clear highlighting
```
<Leader>h :set hlsearch!<CR>
```

### Toggle relative number
```
<Leader>f :set relativenumber!<CR>
```

### Spelling
```
<Leader>ss :set spell!<CR>
<Leader>s ]s
<Leader>z 1z=
```

### Nerdtree
```
<Leader>t :NERDTreeFocus<CR>
```

### Code folding
```
<Leader>f zo
<Leader>g zc
```

### Commentary
```
<Leader>c :Commentary<CR>
```

## Other mappings

### Move visual selection
```
J :m '>+1<cr>gv=gv
K :m '<-2<cr>gv=gv
```

### Move lines
```
<C-j> :m .+1<CR>==
<C-k> :m .-2<CR>==
<C-j> <Esc>:m .+1<CR>==gi
<C-k> <Esc>:m .-2<CR>==gi
<C-j> :m '>+1<CR>gv=gv
<C-k> :m '<-2<CR>gv=gv
```

### reselect pasted text
```
gp `[v`]
```

### Nerdtree
```
<C-n> :NERDTree<CR>
<C-t> :NERDTreeToggle<CR>
<C-s> :NERDTreeFind<CR>
```

