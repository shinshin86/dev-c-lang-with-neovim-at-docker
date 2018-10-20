FROM ubuntu:18.04

RUN set -x && \
    apt-get update && \
    apt-get install -y git cmake && \
    apt-get install -y clang lldb && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:neovim-ppa/unstable && \
    apt-get update && \
    apt-get install -y neovim && \
    # neovim setting
    export XDG_CONFIG_HOME="$HOME/.config" && \
    mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim && \
    git clone https://github.com/Shougo/dein.vim.git \
        ~/.vim/dein/repos/github.com/Shougo/dein.vim && \
    mkdir -p ~/.config/nvim/ && \
    # setup nvim plugin
    apt-get install -y python3-pip && \
    pip3 install neovim && \
    echo 'alias nv="nvim"' >> $HOME/.bashrc && \
    mkdir $HOME/work

COPY ./init.vim /root/.config/nvim/
