#!/bin/bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/oracle_setup
ssh -T git@github.com
git remote add origin git@github.com:Elesider/Oracle_Backup.git

