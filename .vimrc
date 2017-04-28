set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'altercation/vim-colors-solarized'
call neobundle#end()
syntax enable
colorscheme solarized
set background=dark
set number
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set tabstop=4
set smartindent

set wildmode=list:longest
nnoremap j gj
nnoremap k gk
filetype plugin indent on
