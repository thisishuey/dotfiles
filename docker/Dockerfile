FROM ubuntu:16.04

# # Locales
# ENV LANGUAGE=en_US.UTF-8
# ENV LANG=en_US.UTF-8
# RUN apt-get update && apt-get install -y locales && local-gen en-US.UTF-8

# # Colors and italics for tmux
# COPY xterm-256color-italic.terminfo /root
# RUN tic /root/xterm-256color-italic.terminfo
# ENV TERM=xterm-256color-italic

# # Base packages
# RUN apt-get update && apt-get install -y curl fuse git jq tmux wget zsh
# RUN chsh -s /usr/bin/zsh

# # Install docker
# RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
#   echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list && \
#   apt-get install -y apt-transport-https && \
#   apt-get update && \
#   apt-get install -y docker-engine
# RUN curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.13.0/docker-compose-$(uname -s)-$(uname -m)" && \
#   chmod +x /usr/local/bin/docker-compose

# # Create support directories
# RUN mkdir -p ~/.config/nvim && mkdir -p ~/.vim/after/syntax

# # Install config apps
# RUN git clone https://github.com/zsh-users/antigen.git ~/.config/antigen && \
#   git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# # Install ctags
# RUN git clone https://github.com/universal-ctags/ctags.git && \
#   cd ~/ctags && \
#   ./autogen.sh && \
#   .configure && make && \
#   sudo make install && \
#   cd ~ && rm -rf ctags

# # Install neovim
# RUN sudo wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document /usr/bin/nvim && \
#   sudo chmod +x /usr/bin/nvim

# # Install nvm
# RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

