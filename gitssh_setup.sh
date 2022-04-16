#!/bin/bash
eval "$(ssh-agent -s)"
# -k has to be added Unknow bug. I have to run the code line by line. Cannot run as a bashscript
ssh-add -k  ~/.ssh/oracle_setup
# hold on it to avoid optimization
 sleep 5
 echo "Input niz1 computer password"
ssh -T git@github.com

giantenormouscanada@gmail.com

