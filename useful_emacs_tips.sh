#!/usr/bin/env bash

# Install doom emacs in a special folder

name=default
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d.doom-${name}
DOOMDIR=~/.dooom.d.${name} ~/.emacs.d.doom-${name}/bin/doom install
