# Huey's dotfiles
These are my dotfiles. As I start this repo, things will be a bit manual, but as it evolves we will get more and more automated (hopefully using node). For the time being, I will add the steps to get this environment up and running in this readme.

## Use
Right now this is an unix dotfiles repo, I may eventually get it to work with both unix and Macos when I automate the installs (this will mostly entail automatically switching between package managers).

## Installation
1.  `sudo curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -`
2.  `sudo curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo`
3.  `sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg`
4.  `sudo yum update -y`
5.  `sudo yum install -y fuse git mosh nodejs tmux yarn zsh`
6.  `sudo wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document /usr/bin/nvim``
7.  `sudo chmod +x /usr/bin/nvim
8.  `git clone --recurse-submodules -j8 https://github.com/thisishuey/dotfiles.git ~/.dotfiles`
9.  `ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig`
9.  `ln -s ~/.dotfiles/nvim ~/.config/nvim`
10. `ln -s ~/.dotfiles/node/nvm.symlink ~/.nvm`
11. `ln -s ~/.dotfiles/node/nvmrc.symlink ~/.nvmrc`
12. `ln -s ~/.dotfiles/zsh/oh-my-zsh.symlink ~/.oh-my-zsh`
13. `ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf`
14. `ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc`

NOTE: Once you've created a new ssh key and added it to github, to switch the origin url you can run:
`git remote set-url origin git@github.com:thisishuey/dotfiles.git`

## Intro to Vim
* http://nvie.com/posts/how-i-boosted-my-vim/
* http://astonj.com/tech/vim-for-ruby-rails-and-a-sexy-theme/
* https://github.com/shawncplus/vim-classes
* http://learnvimscriptthehardway.stevelosh.com
* https://shapeshed.com/vim-netrw/
* http://nerditya.com/code/guide-to-neovim/
* https://www.linode.com/docs/tools-reference/tools/how-to-install-neovim-and-plugins-with-vim-plug/
* https://bhilburn.org/stop-being-scared-of-vim/

## Additional Reading
* https://shapeshed.com/vim-packages/
* https://shapeshed.com/vim-netrw/
* http://eseth.org/2007/vim-buffers.html
* http://vim.wikia.com/wiki/Vim_buffer_FAQ
* http://vim.wikia.com/wiki/VimTip686
* http://www.vim.org/
* https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340

## Dotfiles Information
* https://github.com/shawncplus/dotfiles
* https://github.com/leomao/dotfiles
* https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789
* https://gist.github.com/stumash/da6f39e10d55878567563a452c903c8a
* https://github.com/Parth/dotfile

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

