set cpoptions+=$
syntax enable
set number
set autoindent
set tabstop=4 shiftwidth=4 expandtab
set smarttab
set backspace=indent,eol,start

set wrap

set cin


set showmatch
set hlsearch
set incsearch
set ignorecase

set lz

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
hi ColorColumn ctermbg=lightgrey guibg=lightgrey


autocmd BufWritePre * %s/\s\+$//e
