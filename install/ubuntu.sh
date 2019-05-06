#!/usr/bin/env bash

{

  # install yarn
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update
  sudo apt-get install -y --no-install-recommends yarn
  
  # install mosh
  sudo add-apt-repository ppa:keithw/mosh
  sudo apt-get update
  sudo apt-get install -y mosh
  
  # install docker
  sudo apt-get update
  sudo apt-get install -y docker.io
  sudo usermod -a -G docker $USER

  # install neovim
  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install -y neovim
  sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

  # install zsh
  sudo apt-get install -y zsh
  sudo chsh -s /bin/zsh $(whoami)
  zsh
  rm -rf ~/.bash*
  
  # install nvm
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

  # install ctags
  sudo apt-get install -y ctags
  
  # install base16-shell
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  ln -s ~/.config/base16-shell/scripts/base16-default-dark.sh ~/.base16_theme
  
  # install antigen
  git clone https://github.com/zsh-users/antigen.git ~/.config/antigen

  # install prettier
  yarn global add prettier

  # ssh-keygen
  instanceId=$(curl --silent http://169.254.169.254/latest/meta-data/instance-id)
  ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N "" -C "$instanceId"

  # setup dotfiles
  git clone https://github.com/thisishuey/dotfiles.git ~/.dotfiles
  mkdir -p ~/.config/nvim
  mkdir -p ~/.vim/after/syntax
  ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
  ln -s ~/.dotfiles/node/nvmrc.symlink ~/.nvmrc
  ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
  ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
  ln -s ~/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim
  ln -s ~/.dotfiles/vim/xml.vim.symlink ~/.vim/after/syntax/xml.vim
  ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

}
