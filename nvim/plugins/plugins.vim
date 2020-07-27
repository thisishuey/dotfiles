call plug#begin(stdpath('data') . '/plugged')

  Plug 'chriskempson/base16-vim'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'edkolev/promptline.vim'
  Plug 'edkolev/tmuxline.vim'
  Plug 'haya14busa/incsearch.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/gv.vim'
  Plug 'mhinz/vim-signify'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'raimondi/delimitmate',
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-dadbod'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'

call plug#end()

source $HOME/.dotfiles/nvim/plugins/chriskepson/base16-vim.vim
source $HOME/.dotfiles/nvim/plugins/edkolev/promptline.vim
source $HOME/.dotfiles/nvim/plugins/haya14busa/incsearch.vim
source $HOME/.dotfiles/nvim/plugins/mhinz/vim-signify.vim
source $HOME/.dotfiles/nvim/plugins/mhinz/vim-startify.vim
source $HOME/.dotfiles/nvim/plugins/neoclide/coc.vim
source $HOME/.dotfiles/nvim/plugins/raimondi/delimitmate.vim
source $HOME/.dotfiles/nvim/plugins/vim-airline/vim-airline.vim
source $HOME/.dotfiles/nvim/plugins/xolox/vim-session.vim
