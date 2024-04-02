#!/bin/bash

######################################################
# Autor:  Jandson Mendes                             #
# E-mail: jandson.mendes@hotmail.com                 #
#                                                    #
######################################################


echo "                    ___           __            ___           ___                        ___"
echo "      ___          /  /\         |  |\         /  /\         /  /\           ___        /  /\\"
echo "     /__/\        /  /:/         |  |:|       /  /::|       /  /::\         /__/\      /  /:/"
echo "     \  \:\      /  /:/          |  |:|      /  /:|:|      /  /:/\:\        \__\:\    /  /:/"
echo "      \__\:\    /  /:/           |__|:|__   /  /:/|:|__   /  /::\ \:\       /  /::\  /  /:/"
echo "      /  /::\  /__/:/     /\ ____/__/::::\ /__/:/_|::::\ /__/:/\:\_\:\   __/  /:/\/ /__/:/"
echo "     /  /:/\:\ \  \:\    /:/ \__\::::/~~~~ \__\/  /~~/:/ \__\/  \:\/:/  /__/\/:/~~  \  \:\\"
echo "    /  /:/__\/  \  \:\  /:/     |~~|:|           /  /:/       \__\::/   \  \::/      \  \:\\"
echo "   /__/:/        \  \:\/:/      |  |:|          /  /:/        /  /:/     \  \:\       \  \:\\"
echo "   \__\/          \  \::/       |__|:|         /__/:/        /__/:/       \__\/        \  \:\\"
echo "                   \__\/         \__\|         \__\/         \__\/                      \__\/"



######################################################
################# Install Plugins ####################
######################################################

# Verificar se os diretórios dos plugins já existem e removê-los se existirem
if [ -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    echo "Removendo o diretório zsh-autosuggestions existente..."
    rm -rf "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
fi

if [ -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    echo "Removendo o diretório zsh-syntax-highlighting existente..."
    rm -rf "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
fi

# Adicionar ZSH Autosuggestions aos plugins do ~/.zshrc
sed -i 's/^plugins=(\(.*\)/plugins=(zsh-autosuggestions zsh-syntax-highlighting \1/' ~/.zshrc 

# Clonar ZSH Autosuggestions
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    echo "Clonando ZSH Autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions" 
fi

# Clonar ZSH Highlight
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    echo "Clonando ZSH Highlight..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"  
fi

echo "Tudo Funcionando seu bóco!"

