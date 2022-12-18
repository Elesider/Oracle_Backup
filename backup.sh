#!/bin/bash
trash-put .vimrc
ln ~/.vimrc
trash-put .bashrc
ln ~/.bashrc
trash-put .Xresources
ln ~/.Xresources
trash-put .tmux.conf 
ln ~/.tmux.conf
trash-put .spiceinit 
ln ~/.xschem/simulations/.spiceinit
trash-put .profile 
ln ~/.profile
trash-put docker-compose.yml  
ln ~/dcontainers/WordE/docker-compose.yml
# Actually no need of trash-put for all existing document.
# once use the ln, the document here are actually the mirror of the exisitng one.
# It will change once chnaged it in the ~ Home directory.
