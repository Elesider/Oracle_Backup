#!/bin/bash
eval "$(ssh-agent -s)"
ssh-add -k  ~/.ssh/oracle_setup
ssh -T git@github.com

