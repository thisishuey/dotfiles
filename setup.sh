# initialize node & yarn repos
sudo curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
sudo curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
sudo rpm --import https://dl.yarnpkg.com/rpm/pubkey.gpg

# yum update & install
sudo yum update -y
sudo yum install -y fuse git mosh nodejs tmux yarn zsh

# enable zsh
sudo chsh -s /bin/zsh ec2-user

# install neovim
sudo wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document /usr/bin/nvim
sudo chmod +x /usr/bin/nvim

# generate supporting directories
mkdir -p ~/.config
mkdir -p ~/.ssh

# ssh-keygen
instanceId=$(curl --silent http://169.254.169.254/latest/meta-data/instance-id)
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N "" -C "$instanceId"

# clone dotfiles
git clone --recurse-submodules -j8 https://github.com/thisishuey/dotfiles.git ~/.dotfiles

# symlinks
ln -s ~/.dotfiles/nvim/config_nvim.symlink ~/.config/nvim
ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig
ln -s ~/.dotfiles/node/nvm.symlink ~/.nvm
ln -s ~/.dotfiles/node/nvmrc.symlink ~/.nvmrc
ln -s ~/.dotfiles/zsh/oh-my-zsh.symlink ~/.oh-my-zsh
ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf
ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

