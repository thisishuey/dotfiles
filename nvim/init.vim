set expandtab
set hidden
set ignorecase
let mapleader=","
set nojoinspaces
" set noshowmode
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

nn <leader>ec :edit ~/.config/nvim/init.vim<cr>
nn <leader>nt :Explore<cr>
nn <leader>sc :source ~/.config/nvim/init.vim<cr>
" temp
nn <leader>ev :edit ~/.vimrc<cr>

:augroup relativenumbertoggle
: autocmd!
: autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
: autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END

" airline configs
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = "powerlineish"

" ale configs
let g:ale_fix_on_save = 1
let g:ale_fixers = {
  \ '*': ['prettier']
\ }
let g:ale_sign_error = '●'
let g:ale_sign_warning = '●'

" emmet configs
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \ 'javascript.jsx': {
    \ 'extends': 'jsx'
  \ }
\ }

" netrw configs

" packages
call plug#begin()
Plug 'edkolev/promptline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
call plug#end()
