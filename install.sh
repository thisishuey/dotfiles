#!/usr/bin/env bash

{

  COMMAND_PREFIX = sudo

  # initialize node & yarn repos
  curl --silent --location https://rpm.nodesource.com/setup_8.x | $COMMAND_PREFIX bash -
  curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | $COMMAND_PREFIX tee /etc/yum.repos.d/yarn.repo
  $COMMAND_PREFIX rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

  # yum update & install
  $COMMAND_PREFIX yum update -y
  $COMMAND_PREFIX yum install -y automake fuse gcc-c++ git ncurses-devel nodejs openssl-devel protobuf-devel yarn zlib-devel zsh

  # pip update
  $COMMAND_PREFIX pip install --upgrade pip

  # enable zsh & clean up bash
  $COMMAND_PREFIX chsh -s /bin/zsh $(whoami)
  rm -rf .bash*

  # create support directories
  mkdir -p ~/.config/nvim
  mkdir -p ~/.vim/after/syntax

  # install config apps
  git clone https://github.com/zsh-users/antigen.git ~/.config/antigen
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

  # install ctags
  git clone https://github.com/universal-ctags/ctags.git
  cd ~/ctags
  ./autogen.sh
  ./configure
  make
  $COMMAND_PREFIX make install
  cd ~
  rm -rf ctags

  # install libevent
  wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz
  tar xzvf libevent-2.1.8-stable.tar.gz
  cd ~/libevent-2.1.8-stable
  ./configure && make
  $COMMAND_PREFIX make install
  ln -s /usr/local/lib/libevent-2.1.so.6 /usrl/lib64/libevent-2.1.so.6
  cd ~
  rm libevent-2.1.8-stable.tar.gz && rm -rf libevent-2.1.8-stable

  # install mosh
  wget https://github.com/mobile-shell/mosh/releases/download/mosh-1.3.2/mosh-1.3.2.tar.gz
  tar xzvf mosh-1.3.2.tar.gz
  cd ~/mosh-1.3.2
  ./configure && make
  $COMMAND_PREFIX make install
  cd ~
  rm mosh-1.3.2.tar.gz && rm -rf mosh-1.3.2

  # install tmux
  wget https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz
  tar xzvf tmux-2.8.tar.gz
  cd ~/tmux-2.8
  ./configure && make
  $COMMAND_PREFIX make install
  cd ~
  rm tmux-2.8.tar.gz && rm -rf tmux-2.8

  # install neovim
  $COMMAND_PREFIX wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document /usr/bin/nvim
  $COMMAND_PREFIX chmod +x /usr/bin/nvim

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
  ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
  ln -s ~/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim
  ln -s ~/.dotfiles/vim/xml.vim.symlink ~/.vim/after/syntax/xml.vim
  ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

}

