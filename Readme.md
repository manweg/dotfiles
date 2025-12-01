## Script for dotfiles install:
```
#!/bin/bash
DOTFILES_DIR=~/GitPrivate/dotfiles

# GitHub Repository klonen
git clone git@github.com:manweg/dotfiles.git $DOTFILES_DIR

# Symlinks erstellen
ln -s $DOTFILES_DIR/.vimrc ~/.vimrc
ln -s $DOTFILES_DIR/.zshrc ~/.zshrc
ln -s $DOTFILES_DIR/.config/nvim ~/.config/nvim
ln -s $DOTFILES_DIR/.config/skhd ~/.config/skhd
ln -s $DOTFILES_DIR/.config/yabai ~/.config/yabai
ln -s $DOTFILES_DIR/.config/sketchybar ~/.config/sketchybar
ln -s $DOTFILES_DIR/.config/aerospace ~/.config/aerospace

# Weitere Symlinks hier hinzufügen
```

## run nvim with different configs
Config Ordner muss in .config vorhanden sein
```
# astronvim
NVIM_APPNAME=astronvim nvim
```

```
# kickstart
NVIM_APPNAME=kickstart nvim
```

## CRDs for helm-ls
https://github.com/datreeio/CRDs-catalog
