let NERDTreeShowHidden = 1

nnoremap <silent><C-e> :NERDTreeToggle<CR>

let g:nerdtree_tabs_open_on_gui_startup = 0

if argc() == 0
  let g:nerdtree_tabs_open_on_console_startup = 1
end

autocmd VimEnter *
  \   if !argc()
  \ |   Startify
  \ |   NERDTree
  \ |   wincmd w
  \ | endif
