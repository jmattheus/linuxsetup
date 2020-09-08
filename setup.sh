#!/bin/bash
rm ~/.bashrc
rm ~/.tmux.conf
rm ~/.tmux.remote.conf
rm -rf ~/.grc
rm ~/.emacs.d/init.el
mkdir ~/.emacs.d
mkdir ~/.grc
ln .emacs.d/init.el ~/.emacs.d/init.el
ln .bashrc ~/.bashrc
ln .tmux.conf ~/.tmux.conf
ln .tmux.remote.conf ~/.tmux.remote.conf
ln .grc/conf.hexdump ~/.grc/conf.hexdump
ln .grc/conf.nmap ~/.grc/conf.nmap
ln .grc/grc.conf ~/.grc/conf
