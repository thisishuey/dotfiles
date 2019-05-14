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
  sudo apt-get install apt-transport-https gnupg-agent
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
  sudo apt-get update
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io
  sudo usermod -a -G docker $USER

  # install docker-credential-pass
  sudo apt-get update
  sudo apt-get install -y pass
  curl -L https://github.com/docker/docker-credential-helpers/releases/download/v0.6.2/docker-credential-pass-v0.6.2-amd64.tar.gz | sudo tar -xz -C /usr/local/bin/
  sudo chmod +x /usr/local/bin/docker-credential-pass

  # install docker-compose
  sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose

  # install docker-machine
  base=https://github.com/docker/machine/releases/download/v0.16.0 &&
  curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
  sudo install /tmp/docker-machine /usr/local/bin/docker-machine

  # install neovim
  sudo add-apt-repository ppa:neovim-ppa/stable
  sudo apt-get update
  sudo apt-get install -y neovim python-dev python-pip python3-dev python3-pip
  sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
  sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

  # install PHP
  sudo apt install -y php php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php unzip
  sudo systemctl disable apache2

  # install composer
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
  php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
  php composer-setup.php
  php -r "unlink('composer-setup.php');"
  sudo mv composer.phar /usr/local/bin/composer
  sudo chmod +x /usr/local/bin/composer

  # install zsh
  sudo apt-get install -y zsh
  sudo chsh -s /bin/zsh $(whoami)
  zsh
  rm -rf ~/.bash*

  # install nvm
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

  # install ctags
  sudo add-apt-repository ppa:hnakamur/universal-ctags
  sudo apt-get update
  sudo apt-get install -y universal-ctags

  # install base16-shell
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  ln -s ~/.config/base16-shell/scripts/base16-default-dark.sh ~/.base16_theme

  # install antigen
  git clone https://github.com/zsh-users/antigen.git ~/.config/antigen

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
