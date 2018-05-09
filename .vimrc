if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')


call dein#end()


set nocompatible
set encoding=utf-8
scriptencoding utf-8
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tacahiroy/ctrlp-funky'
NeoBundle 'suy/vim-ctrlp-commandline'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'scrooloose/nerdtree'
call neobundle#end()
syntax enable
colorscheme solarized
syntax on
set background=dark
set number
set list
set cursorline
set cursorcolumn
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
g:solarized_termtrans=1
source $VIMRUNTIME/macros/matchit.vim
set laststatus=2
set tabstop=4
set ruler
set nolist 
set wildmenu " コマンドモードの補完
set history=5000
set wildmode=list:longest
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set ignorecase " 検索パターンに大文字小文字を区別しない
set smartcase " 検索パターンに大文字を含んでいたら大文字小文字を区別する
set hlsearch " 検索結果をハイライト
set backspace=indent,eol,start
nnoremap j gj
nnoremap k gk
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
filetype plugin indent on
