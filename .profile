# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask  for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



# Set up for nnn

# Check the nnn wiki:https://github.com/jarun/nnn/wiki/Usage#installation

# 1. Book Mark
export NNN_BMS='h:~;t:~/IC_Tools;n:~/Note;s:/;g:~/Note/git'
export NNN_COLORS='2367'
# 2. Configure assign keybinds to invote shortcuto
export NNN_PLUG='t:!tmux -v $nnn'

