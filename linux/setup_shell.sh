#!/usr/bin/bash

# install Oh My Zsh (script will also promt user for zsh if not already default shell)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# download nerdfont zip
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/JetBrainsMono.zip
unzip JetBrainsMono.zip -d ~/.local/share/fonts
rm JetBrainsMono.zip

# refresh font cache
fc-cache -fv

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

# copy config files
cp .zshrc ~/.zshrc
cp .zsh_history ~/.zsh_history
cp .p10k.zsh ~/.p10k.zsh

source ~/.zshrc