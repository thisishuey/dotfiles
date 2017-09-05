# Huey's dotfiles
These are my dotfiles. As I start this repo, things will be a bit manual, but as it evolves we will get more and more automated (hopefully using node). For the time being, I will add the steps to get this environment up and running in this readme.

## Use
Right now this is an Ubuntu dotfiles repo, I may eventually get it to work with both Ubuntu and Macos when I automate the installs (this will mostly entail automatically switching between apt and brew).

## Installation
1. sudo apt install zsh -y
2. curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.3/install.sh | bash
3. git clone https://github.com/thisishuey/dotfiles ~/.dotfiles
4. create the following symlinks:
	a. ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
	b. ln -s ~/.dotfiles/node/nvm.symlink ~/.nvm
	c. ln -s ~/.dotfiles/zsh/oh-my-zsh.symlink ~/.oh-my-zsh
	d. ln -s ~/.dotfiles/vim/vim.symlink ~/.vim
	e. ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
	f. ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

## Intro to Vim
http://nvie.com/posts/how-i-boosted-my-vim/
http://astonj.com/tech/vim-for-ruby-rails-and-a-sexy-theme/
https://github.com/shawncplus/vim-classes
http://learnvimscriptthehardway.stevelosh.com

## Additional Reading
https://shapeshed.com/vim-packages/
https://shapeshed.com/vim-netrw/
http://eseth.org/2007/vim-buffers.html
http://vim.wikia.com/wiki/Vim_buffer_FAQ
http://vim.wikia.com/wiki/VimTip686
http://www.vim.org/

## Current Plugins
https://github.com/kien/ctrlp.vim
https://github.com/itchyny/lightline.vim
https://github.com/scrooloose/nerdtree
https://github.com/tpope/vim-fugitive
https://github.com/pangloss/vim-javascript
https://github.com/mxw/vim-jsx
https://github.com/tpope/vim-surround
https://github.com/vimwiki/vimwiki

## Current Color Schemes
https://github.com/joshdick/onedark.vim
https://github.com/rakr/vim-one
https://github.com/jpo/vim-railscasts-theme

## Dotfiles Information
https://github.com/shawncplus/dotfiles
https://github.com/leomao/dotfiles
https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

## Misc.
https://unix.stackexchange.com/questions/202918/how-do-i-remotely-edit-files-via-ssh
https://github.com/tpope
https://github.com/powerline/fonts
https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
https://github.com/Lokaltog/vim-powerline/blob/09c0cea859a2e0989eea740655b35976d951a84e/autoload/Powerline/Functions/fugitive.vim
https://github.com/Lokaltog/vim-powerline/blob/09c0cea859a2e0989eea740655b35976d951a84e/autoload/Pl/Parser.vim
https://github.com/leomao
http://fideloper.com/mac-vim-tmux

## Additional Resources
Monoco for Powerline (for iTerm on Mac)
https://gist.github.com/baopham/1838072

