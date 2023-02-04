#!/bin/sh
# This is a script install oh-my-zsh with two good plugins automatically
# which are zsh-syntax-highlighting and zsh-autosuggestions
apt update && \
apt install -y curl && \
apt install -y zsh && \
apt install -y git && \
echo -e "\033[32mIt's time to install oh-my-zsh. After installed, you will jump to a zsh proc."
echo -e "At that time press ctrl + d\033[0m  \033[31m(not now)\033[0m \033[32mto jump out of it and run the rest script\033[0m"
read -p "Understand? (press any key to continue) "
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting && \
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
sed -i -e "s/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/" ~/.zshrc && \
echo -e "\033[32mCongratulations! Install and Configure Done. \033[0m"
read -p "Enter oh-my-zsh (press any key) "
zsh