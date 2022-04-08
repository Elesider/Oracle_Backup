#!/bin/bash
eval "$(ssh-agent -s)"
# -k has to be added
ssh-add -k  ~/.ssh/oracle_setup
ssh -T git@github.com

