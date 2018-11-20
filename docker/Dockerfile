FROM ubuntu:18.04

RUN \
  apt-get update && \
  apt-get install -y build-essential curl && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && \
  apt-get install -y git locales sudo tmux vim wget yarn zsh && \
  useradd -m -s /bin/zsh huey && \
  echo "huey ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/huey && \
  chmod 0440 /etc/sudoers.d/huey

COPY xterm-256color-italic.terminfo /root
RUN tic /root/xterm-256color-italic.terminfo
ENV TERM=xterm-256color-italic

USER huey
RUN \
  git clone https://github.com/zsh-users/antigen.git ~/.config/antigen && \
  git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell && \
  sudo wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document /usr/bin/nvim && \
  sudo chmod +x /usr/bin/nvim && \
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash && \
  yarn global add prettier && \
  git clone https://github.com/thisishuey/dotfiles.git ~/.dotfiles && \
  mkdir -p ~/.config/nvim && \
  mkdir -p ~/.vim/after/syntax && \
  ln -s ~/.dotfiles/git/gitconfig.symlink ~/.gitconfig && \
  ln -s ~/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf && \
  ln -s ~/.dotfiles/vim/vimrc.symlink ~/.vimrc && \
  ln -s ~/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim && \
  ln -s ~/.dotfiles/vim/xml.vim.symlink ~/.vim/after/syntax/xml.vim && \
  ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
RUN sudo locale-gen "en_US.UTF-8"

EXPOSE 3000
WORKDIR /home/huey

# # Install ctags
# RUN git clone https://github.com/universal-ctags/ctags.git && \
#   cd ~/ctags && \
#   ./autogen.sh && \
#   .configure && make && \
#   sudo make install && \
#   cd ~ && rm -rf ctags

