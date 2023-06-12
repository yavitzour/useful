#!/usr/bin/env bash

# Install doom emacs in a special folder

name=full
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d.doom-${name}
DOOMDIR=~/doom_config/doom.d.${name} ~/.emacs.d.doom-${name}/bin/doom install

name=thin
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d.doom-${name}
DOOMDIR=~/doom_config/doom.d.${name} ~/.emacs.d.doom-${name}/bin/doom install

# REMEMBER TO INSTALL FONTS!!! (SourceCodePro)
mkdir -p ~/INSTALL/Fonts
cd ~/INSTALL/Fonts
git clone https://github.com/adobe-fonts/source-code-pro.git
cp source-code-pro/OTF/* ~/.local/share/fonts/
fc-cache -f -v
