
set cpoptions+=$

set tabstop=4
set shiftwidth=4
set smarttab
set et

set wrap

set ai
set cin

set showmatch
set hlsearch
set incsearch
set ignorecase

se lz

set number

autocmd FileType cpp set keywordprg=cppman

"setup breakets shifting

map! { {}ko

let &colorcolumn=join(range(81,999),",")
let &colorcolumn="81,".join(range(120,999),",")
hi ColorColumn ctermbg=grey guibg=grey

set foldcolumn=4

autocmd BufWritePre * %s/\s\+$//e

if &diff
    colorscheme apprentice
endif

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
