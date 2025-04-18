#!/bin/bash
sudo apt-get update && apt-get upgrade -y
sudo apt-get install git tmux vim exuberant-ctags curl gcc zsh zip unzip python3 python3-venv python3-dev wget fd-find bat tree ripgrep default-jdk -y

################################################################################
# zsh and OH MY ZSH
################################################################################
curl https://raw.githubusercontent.com/ThoDHa/confs/main/zshrc > ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
curl https://raw.githubusercontent.com/ThoDHa/confs/master/zshrc > ~/.zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
chsh -s $(which zsh)


################################################################################
# TMUX
################################################################################

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl https://raw.githubusercontent.com/ThoDHa/confs/main/tmux.conf > ~/.tmux.conf
tmux run-shell ~/.tmux/plugins/tpm/bin/install_plugins

################################################################################
# NVIM
################################################################################

sh nvim_install.sh

################################################################################
# FZF
################################################################################
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install
