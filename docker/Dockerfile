FROM ubuntu:18.04

RUN \
  apt-get update && \
  apt-get install -y build-essential curl && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && \
  apt-get install -y git locales tmux vim wget yarn zsh && \
  chsh -s /usr/bin/zsh && \
  git clone https://github.com/zsh-users/antigen.git /root/.config/antigen && \
  git clone https://github.com/chriskempson/base16-shell.git /root/.config/base16-shell && \
  wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document /usr/bin/nvim && \
  chmod +x /usr/bin/nvim && \
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash && \
  yarn global add prettier && \
  git clone https://github.com/thisishuey/dotfiles.git /root/.dotfiles && \
  mkdir -p /root/.config/nvim && \
  mkdir -p /root/.vim/after/syntax && \
  ln -s /root/.dotfiles/git/gitconfig.symlink ~/.gitconfig && \
  ln -s /root/.dotfiles/tmux/tmux.conf.symlink ~/.tmux.conf && \
  ln -s /root/.dotfiles/vim/vimrc.symlink ~/.vimrc && \
  ln -s /root/.dotfiles/vim/init.vim.symlink ~/.config/nvim/init.vim && \
  ln -s /root/.dotfiles/vim/xml.vim.symlink ~/.vim/after/syntax/xml.vim && \
  ln -s /root/.dotfiles/zsh/zshrc.symlink ~/.zshrc

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
RUN locale-gen "en_US.UTF-8"

COPY xterm-256color-italic.terminfo /root/.config
RUN tic /root/.config/xterm-256color-italic.terminfo
ENV TERM=xterm-256color-italic

# # Install ctags
# RUN git clone https://github.com/universal-ctags/ctags.git && \
#   cd ~/ctags && \
#   ./autogen.sh && \
#   .configure && make && \
#   sudo make install && \
#   cd ~ && rm -rf ctags
WORKDIR /root
EXPOSE 3000
