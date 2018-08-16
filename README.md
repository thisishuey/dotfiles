# Huey's dotfiles
These are my dotfiles. As I start this repo, things will be a bit manual, but as it evolves we will get more and more automated (hopefully using node). For the time being, I will add the steps to get this environment up and running in this readme.

## Use
Right now this is an Ubuntu dotfiles repo, I may eventually get it to work with both Ubuntu and Macos when I automate the installs (this will mostly entail automatically switching between apt and brew).

## TODO
1. finish up powerline for tmux setup (update tmux to 2.2?)
2. https://github.com/joshdick/onedark.vim
3. https://github.com/odedlaz/tmux-onedark-theme
4. get powerline working with zsh
5. automation with node (symlinks, install scripts, etc.)

## Installation
1. `sudo apt install zsh -y`
2. `sudo apt install python3-pip -y`
3. `sudo apt install rubygems -y`
4. `pip3 install --upgrade pip`
5. `pip3 install powerline-status [--user]`
6. `pip install powerline-gitstatus`
7. `sudo gem install vimgolf`
8. `brew install yarn --without-node`
9. `git clone --recurse-submodules -j8 https://github.com/thisishuey/dotfiles ~/.dotfiles`
	1. https://stackoverflow.com/questions/1030169/easy-way-to-pull-latest-of-all-git-submodules
	2. `git submodule update --init --recursive` 
10. create the following symlinks:
	1. `ln -s ~/.dotfiles/zsh/config/powerline.symlink ~/.config/powerline`
	2. `ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig`
	3. `ln -s ~/.dotfiles/node/nvm.symlink ~/.nvm`
	4. `ln -s ~/.dotfiles/zsh/oh-my-zsh.symlink ~/.oh-my-zsh`
	5. `ln -s ~/.dotfiles/tmux/tmux.config.symlink ~/.tmux.conf`
	6. `ln -s ~/.dotfiles/vim/vim.symlink ~/.vim`
	7. `ln -s ~/.dotfiles/vim/vimgolf.symlink ~/.vimgolf`
	8. `ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc`
	9. `ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc`

## Mac Powerline
1. `brew install python`
2. `brew install vim`
3. `brew install tmux`
4. `pip3 install powerline-status`
5. `pip3 install powerline-gitstatus`
6. Add following to .zshrc
	1. `PATH="/usr/local/bin:$PATH"`
	2. `powerline-daemon -q`
	3. `. /usr/local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh`
7. Add following to .vimrc
	1. `set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim,nt,nt`
	2. `let g:minBufExplForceSyntaxEnable = 1`
	3. `python3 from powerline.vim import setup as powerline_setup`
	4. `python3 powerline_setup()`
	5. `python3 del powerline_setup`

## Intro to Vim
* http://nvie.com/posts/how-i-boosted-my-vim/
* http://astonj.com/tech/vim-for-ruby-rails-and-a-sexy-theme/
* https://github.com/shawncplus/vim-classes
* http://learnvimscriptthehardway.stevelosh.com

## Additional Reading
* https://shapeshed.com/vim-packages/
* https://shapeshed.com/vim-netrw/
* http://eseth.org/2007/vim-buffers.html
* http://vim.wikia.com/wiki/Vim_buffer_FAQ
* http://vim.wikia.com/wiki/VimTip686
* http://www.vim.org/

## Current Plugins
* https://github.com/kien/ctrlp.vim
* https://github.com/scrooloose/nerdtree
* https://github.com/tpope/vim-fugitive
* https://github.com/pangloss/vim-javascript
* https://github.com/mxw/vim-jsx
* https://github.com/tpope/vim-surround
* https://github.com/vimwiki/vimwiki

## Powerline
* https://github.com/powerline/powerline
* https://computers.tutsplus.com/tutorials/getting-spiffy-with-powerline--cms-20740

## Current Color Schemes
* https://github.com/joshdick/onedark.vim
* https://github.com/rakr/vim-one
* https://github.com/jpo/vim-railscasts-theme

## Dotfiles Information
* https://github.com/shawncplus/dotfiles
* https://github.com/leomao/dotfiles
* https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789

## Misc.
* http://homeonrails.com/2016/05/truecolor-in-gnome-terminal-tmux-and-neovim/
* https://unix.stackexchange.com/questions/202918/how-do-i-remotely-edit-files-via-ssh
* https://github.com/tpope
* https://github.com/powerline/fonts
* https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
* https://github.com/Lokaltog/vim-powerline/blob/09c0cea859a2e0989eea740655b35976d951a84e/autoload/Powerline/Functions/fugitive.vim
* https://github.com/Lokaltog/vim-powerline/blob/09c0cea859a2e0989eea740655b35976d951a84e/autoload/Pl/Parser.vim
* https://github.com/leomao
* http://fideloper.com/mac-vim-tmux

## Additional Resources
Monoco for Powerline (for iTerm on Mac) https://gist.github.com/baopham/1838072
