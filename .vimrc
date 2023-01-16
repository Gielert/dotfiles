syntax on
filetype plugin indent on
set number
set cc=119
set laststatus=2
set noshowmode
set noswapfile
set nocompatible
set termguicolors

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

call plug#begin()

"+--- Colorscheme --+
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

"+--- UI ---+
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

"+--- IDE / Workflow ---+
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'

"+--- Syntax ---+
Plug 'sheerun/vim-polyglot'
Plug 'Fymyte/rasi.vim'

call plug#end()

"+--- Theme ---+
colorscheme catppuccin_mocha

let g:lightline = {
      \ 'colorscheme': 'catppuccin_mocha',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ],
      \     [ 'fugitive', 'filename' ]
      \   ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': {
      \   'left': '',
      \   'right': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \ }

function! LightlineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction

function! LightlineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! LightlineFugitive()
  if exists("*fugitive#head")
    let branch = fugitive#head()
    return branch !=# '' ? ' '.branch : ''
  endif
  return ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

let g:vim_jsx_pretty_colorful_config = 1
let g:vim_jsx_pretty_template_tags = [ 'jsx', 'js' ]
