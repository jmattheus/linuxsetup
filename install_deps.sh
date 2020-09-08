#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install -y bison make curl emacs git libncurses5-dev libevent-dev autoconf automake pkg-config gcc w3m ranger caca-utils highlight atool w3m poppler-utils mediainfo
git clone https://github.com/tmux/tmux.git
cd tmux
./autogen.sh
./configure
make
sudo make install
