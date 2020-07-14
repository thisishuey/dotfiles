#!/usr/bin/env bash

{

  # pre install
  # tmux new -A -s dotfiles-setup
  # sudo apt update
  # sudo apt upgrade
  # sudo apt install fish gcc
  # sudo chsh -s /usr/bin/fish $(whoami)
  # rm -rf ~/.bash* ~/.profile
  # sudo reboot

  # DO NOT NEED
  # sudo apt install -y build-essential
  # sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  # eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  # brew install fish gcc
  # sudo chsh -s /home/linuxbrew/.linuxbrew/bin/fish $(whoami)
  # rm -rf ~/.bash* ~/.profile
  # sudo reboot

  # install dev tools
  tmux new -A -s dotfiles-setup
  sudo apt install mosh neovim silversearcher-ag
  sudo snap install hub --classic
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.8
  mkdir -p ~/.config/fish/completions
  cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

  # DO NOT NEED
  # eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  # brew install asdf hub mosh neovim the_silver_searcher

  # DO NOT NEED
  # install rails dependencies
  # brew install postgres redis

  # DO NOT NEED
  # install docker
  # brew install docker docker-compose docker-machine

  # DO NOT NEED
  # configure neovim as default editor
  # sudo update-alternatives --install /usr/bin/vi vi /home/linuxbrew/.linuxbrew/bin/nvim 60
  # sudo update-alternatives --install /usr/bin/vim vim /home/linuxbrew/.linuxbrew/bin/nvim 60
  # sudo update-alternatives --install /usr/bin/editor editor /home/linuxbrew/.linuxbrew/bin/nvim 60

  # install base16-shell
  curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
  fisher add tomyun/base16-fish

  # DO NOT NEED
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

  # DO NOT NEED
  # install docker-credential-pass
  # sudo apt-get update
  # sudo apt-get install -y pass
  # curl -L https://github.com/docker/docker-credential-helpers/releases/download/v0.6.2/docker-credential-pass-v0.6.2-amd64.tar.gz | sudo tar -xz -C /usr/local/bin/
  # sudo chmod +x /usr/local/bin/docker-credential-pass

  # ssh-keygen
  ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N "" -C (curl --silent http://169.254.169.254/latest/meta-data/instance-id)

  # setup dotfiles
  git clone https://github.com/thisishuey/dotfiles.git ~/.dotfiles
  mkdir -p ~/.config/nvim
  ln -s ~/.dotfiles/asdf/tool-versions.symlink ~/.tool-versions
  ln -s ~/.dotfiles/fish/config.fish.symlink ~/.config/fish/config.fish
  ln -s ~/.dotfiles/fish/fish_mode_prompt.fish.symlink ~/.config/fish/functions/fish_mode_prompt.fish
  ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
  ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
  ln -s ~/.dotfiles/vim/editorconfig.symlink ~/.editorconfig
  ln -s ~/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim
  ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc
  ln -s ~/.dotfiles/vim/vimrc_background.symlink ~/.vimrc_background
  
  # post install
  # sudo reboot
  # asdf plugin-add golang
  # asdf plugin-add nodejs
  # asdf plugin-add yarn
  # sudo apt install -y zlib1g-dev
  # bash /home/linuxbrew/.linuxbrew/opt/asdf/plugins/nodejs/bin/import-release-team-keyring
  # asdf install

}
