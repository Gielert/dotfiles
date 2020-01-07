syntax on
filetype plugin indent on
set number
set cc=119
set laststatus=2
set noshowmode
set noswapfile

if !has('gui_running')
  set t_Co=256
endif

let mapleader = ","

map <C-t> :NERDTreeToggle<CR>

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  let @/=''
  call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

set softtabstop=2
set expandtab
set shiftwidth=2


source ~/.vimrc_plugins
source ~/.vimrc_background
