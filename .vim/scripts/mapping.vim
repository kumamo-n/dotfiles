"
" Keymaps
"

let mapleader = "\<Space>"

noremap j gj
noremap k gk
noremap <Leader>h ^
noremap <Leader>l $
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>t :tabnew<CR>:Startify<CR>
nnoremap <Leader>F :Ag<Space>
nnoremap <Leader><Tab> <C-w>w
nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
inoremap jj <ESC>
