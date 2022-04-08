#!/bin/bash
eval "$(ssh-agent -s)"
# -k has to be added Unknow bug. I have to run the code line by line. Cannot run as a bashscript
ssh-add -k  ~/.ssh/oracle_setup
ssh -T git@github.com

