# install dev tools
tmux new -A -s dotfiles-setup
sudo apt-get install -y neovim silversearcher-ag
sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf --branch v0.7.8
mkdir -p $HOME/.config/fish/completions
cp $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# ssh-keygen
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N "" -C "huey-dev"

# setup dotfiles
git clone https://github.com/thisishuey/dotfiles.git $HOME/.dotfiles
mkdir -p $HOME/.config/fish/functions
mkdir -p $HOME/.config/nvim
ln -s $HOME/.dotfiles/asdf/tool-versions.symlink $HOME/.tool-versions
ln -s $HOME/.dotfiles/fish/config.fish.symlink $HOME/.config/fish/config.fish
ln -s $HOME/.dotfiles/fish/fish_mode_prompt.fish.symlink $HOME/.config/fish/functions/fish_mode_prompt.fish
ln -s $HOME/.dotfiles/git/gitconfig.symlink $HOME/.gitconfig
ln -s $HOME/.dotfiles/tmux/tmux.conf.symlink $HOME/.tmux.conf
ln -s $HOME/.dotfiles/nvim/coc/coc-settings.json.symlink $HOME/.config/nvim/coc-settings.json
ln -s $HOME/.dotfiles/nvim/editorconfig.symlink $HOME/.editorconfig
ln -s $HOME/.dotfiles/nvim/init.vim.symlink $HOME/.config/nvim/init.vim
