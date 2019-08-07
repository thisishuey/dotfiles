#!/usr/bin/env bash

{

  # pre install
  # tmux new -A -s dotfiles-setup
  # sudo apt update
  # sudo apt upgrade
  # sudo apt install -y build-essential
  # sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  # eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  # brew install fish
  # sudo chsh -s /home/linuxbrew/.linuxbrew/bin/fish $(whoami)
  # rm -rf ~/.bash* ~/.profile

  # install dev tools
  brew install asdf hub imagemagick mosh neovim postgres redis the_silver_searcher

  # install docker
  # brew install docker docker-compose docker-machine

  # configure neovim as default editor
  sudo update-alternatives --install /usr/bin/vi vi /home/linuxbrew/.linuxbrew/bin/nvim 60
  sudo update-alternatives --install /usr/bin/vim vim /home/linuxbrew/.linuxbrew/bin/nvim 60
  sudo update-alternatives --install /usr/bin/editor editor /home/linuxbrew/.linuxbrew/bin/nvim 60

  # install base16-shell
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
  ln -s ~/.config/base16-shell/scripts/base16-default-dark.sh ~/.base16_theme

  # install ctags
  # sudo apt-get update
  # sudo apt-get install -y pkg-config
  # git clone https://github.com/universal-ctags/ctags.git
  # cd ctags
  # ./autogen.sh
  # ./configure
  # make
  # sudo make install
  # cd ..
  # rm -rf ctags

  # install docker-credential-pass
  # sudo apt-get update
  # sudo apt-get install -y pass
  # curl -L https://github.com/docker/docker-credential-helpers/releases/download/v0.6.2/docker-credential-pass-v0.6.2-amd64.tar.gz | sudo tar -xz -C /usr/local/bin/
  # sudo chmod +x /usr/local/bin/docker-credential-pass

  # ssh-keygen
  ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N "" -C (curl --silent http://169.254.169.254/latest/meta-data/instance-id)

  # setup dotfiles
  git clone https://github.com/thisishuey/dotfiles.git ~/.dotfiles
  mkdir -p ~/.config/fish/functions
  mkdir -p ~/.config/nvim
  mkdir -p ~/.vim/after/syntax
  ln -s ~/.dotfiles/asdf/tool-versions.symlink ~/.tool-versions
  ln -s ~/.dotfiles/fish/config.fish.symlink ~/.config/fish/config.fish
  ln -s ~/.dotfiles/fish/fish_mode_prompt.fish.symlink ~/.config/fish/functions/fish_mode_prompt.fish
  ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
  ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
  ln -s ~/.dotfiles/vim/editorconfig.symlink ~/.editorconfig
  ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
  ln -s ~/.dotfiles/vim/vimrc_background.symlink ~/.vimrc_background
  ln -s ~/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim
  ln -s ~/.dotfiles/vim/xml.vim.symlink ~/.vim/after/syntax/xml.vim

  # install node
  # install php
  # install ruby
  # install yarn

  # install composer
  # php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
  # php -r "if (hash_file('sha384', 'composer-setup.php') === '48e3236262b34d30969dca3c37281b3b4bbe3221bda826ac6a9a62d6444cdb0dcd0615698a5cbe587c3f0fe57a54d8f5') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
  # php composer-setup.php
  # php -r "unlink('composer-setup.php');"
  # sudo mv composer.phar /usr/local/bin/composer
  # sudo chmod +x /usr/local/bin/composer
  
  # post install
  # sudo reboot
  # pg_ctl -D /home/linuxbrew/.linuxbrew/var/postgres start
  # redis-server /home/linuxbrew/.linuxbrew/etc/redis.conf &
  # sudo apt install -y zlib1g-dev
  # asdf install ruby 2.4.1

}
