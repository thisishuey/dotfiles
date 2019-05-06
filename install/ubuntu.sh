#!/usr/bin/env bash

{

  # apt-get update & install
  sudo apt-get update
  sudo apt-get install -y build-essentials software-properties-common

  # initialize yarn
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "dev http://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

  # add mosh repo
  sudo add-apt-repository ppa:keithw/mosh

  # add neovim repo
  sudo add-apt-repository ppa:neovim-ppa/stable

  # apt-get update & install
  sudo apt-get update
  # stock: git sudo tmux vim
  sudo apt-get install -y autoconf locales mosh neovim pkg-config yarn zsh
  sudo apt-get install -y libasound2 libgconf-2-4 libgtk2.0-0 libnotify-dev libnss3 libxss1 xvfb

  # configure neovim
  update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
  update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
  update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

  # enable zsh & clean up bash
  chsh -s /bin/zsh $(whoami)
  rm -rf .bash*

  # install config apps
  git clone https://github.com/zsh-users/antigen.git ~/.config/antigen
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

  # create support directories
  mkdir -p ~/.config/nvim
  mkdir -p ~/.vim/after/syntax

  # install ctags
  git clone https://github.com/universal-ctags/ctags.git
  cd ~/ctags
  ./autogen.sh
  ./configure
  make
  sudo make install
  cd ~
  rm -rf ~/ctags

  # install nvm
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

  # install prettier
  yarn global add prettier

  # ssh-keygen
  instanceId=$(curl --silent http://169.254.169.254/latest/meta-data/instance-id)
  ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N "" -C "$instanceId"

  # clone dotfiles
  git clone https://github.com/thisishuey/dotfiles.git ~/.dotfiles

  # symlinks
  ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
  ln -s ~/.dotfiles/node/nvmrc.symlink ~/.nvmrc
  ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
  ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
  ln -s ~/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim
  ln -s ~/.dotfiles/vim/xml.vim.symlink ~/.vim/after/syntax/xml.vim
  ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

}
