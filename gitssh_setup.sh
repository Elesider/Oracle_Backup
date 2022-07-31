#!/bin/bash
eval "$(ssh-agent -s)"
 sleep 1
# -k has to be added Unknow bug. I have to run the code line by line. Cannot run as a bashscript
 echo "Input niz1 computer password"
ssh-add -k  ~/.ssh/oracle_setup
# hold on it to avoid optimization
 sleep 5
ssh -T git@github.com

