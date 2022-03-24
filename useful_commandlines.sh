#!/usr/bin/env bash
set -euo pipefail

# Stop emacs process and send to debug mode
kill -SIGUSR2 <emacs pid>

# Or, if only one emacs instance is running (or to send to all running instances)
killall -SIGUSR2 emacs

# Unmount a stuck mount point
sudo umount -l -f <mount point>

# Set capslock to behave as ctrl
setxkbmap -option ctrl:nocaps

# Safely exit bash script
if [[ "$0" != "$BASH_SOURCE" ]]
then
    EXIT=return
else
    EXIT=exit
fi

# Load .emacs.d into memory
vmtouch -t ~/.emacs.d.doom-full

# list all installed packages
apt list --installed

# see which key is pressed
xev

# Removing find results (3 options, differences between them seem unimportant)
find [find criteria] -delete
find [find criteria] -exec rm {} \;
find [find criteria] -print0 | xargs -0 rm
