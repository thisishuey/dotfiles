#!/usr/bin/env bash

{
  
  # initialize node & yarn repos
  curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -
  curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
  sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

  # yum update & install
  sudo yum update -y
  sudo yum install -y automake fuse gcc-c++ git ncurses-devel nodejs openssl-devel protobuf-devel tmux yarn zlib-devel zsh

  # enable zsh & clean up bash
  sudo chsh -s /bin/zsh $(whoami)
  rm -rf .bash*

  # create support directories
  mkdir -p ~/.config/nvim
  mkdir -p ~/.vim/after/syntax

  # install config apps
  git clone https://github.com/zsh-users/antigen.git ~/.config/antigen
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

  # install mosh
  git clone https://github.com/mobile-shell/mosh.git
  cd mosh
  ./autogen.sh
  ./configure
  make
  sudo make install
  cd ..
  rm -rf mosh

  # install neovim
  sudo wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document /usr/bin/nvim
  sudo chmod +x /usr/bin/nvim

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
  ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
  ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
  ln -s ~/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim
  ln -s ~/.dotfiles/vim/xml.vim.symlink ~/.vim/after/syntax/xml.vim
  ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

}

