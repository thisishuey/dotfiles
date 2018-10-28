" packages
call plug#begin()
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'nanotech/jellybeans.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()

colors jellybeans

set expandtab
set hidden
set ignorecase
let mapleader = "\<Space>"
set nojoinspaces
set noswapfile
set nowrap
set number
set relativenumber
set shiftwidth=2
set softtabstop=2
set splitbelow
set splitright
set tabstop=2
set wildignore+=node_modules/*
set wildmode=longest:full,full

let g:netrw_is_open = 0
function! ToggleNetrw()
  if g:netrw_is_open
    execute ":bd" 
    echo "netrw closed"
    let g:netrw_is_open = 0
  else
    execute ":edit ."
    echo "netrw opened"
    let g:netrw_is_open = 1
  endif
endfunction

nn <leader>ec :edit ~/.config/nvim/init.vim<cr>
nn <leader>nt :call ToggleNetrw()<cr>
nn <leader>sc :source ~/.config/nvim/init.vim<cr>

nnoremap <silent> <Esc><Esc> : let @/=""<cr>

:augroup relativenumbertoggle
: autocmd!
: autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
: autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END

" airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "jellybeans"

" ale configs
let g:ale_fix_on_save = 1
let g:ale_fixers = {
  \ "*": ["prettier"]
\ }
let g:ale_sign_error = "●"
let g:ale_sign_warning = "●"

" emmet configs
let g:user_emmet_leader_key = "<Tab>"
let g:user_emmet_settings = {
  \ "javascript.jsx": {
    \ "extends": "jsx"
  \ }
\ }

" netrw configs

" promptline configs
let g:promptline_preset = {
  \ "a": [ promptline#slices#user() ],
  \ "b": [ promptline#slices#cwd() ],
  \ "c": [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
  \ "warn": [ promptline#slices#last_exit_code() ],
  \ "options": {
    \ "left_sections": [ "a", "b", "c", "warn" ],
    \ "right_sections": []
  \ }
\ }
let g:promptline_theme = "airline"

