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


# Define a quantidade de tempo para dormir entre as atualizações da barra de progresso (em segundos)
SLEEP_INTERVAL=1

# Número total de etapas ou operações no script
TOTAL_STEPS=1

# Inicializa o contador de progresso
progress=0

# Etapa 1: Instalação do ZSH
echo "Instalando ZSH..."

# Comando para instalar o ZSH (você pode substituir pelo comando real de instalação)
sudo apt install zsh > /dev/null 2>&1

# Atualiza o contador de progresso
((progress++))

# Calcula a porcentagem concluída
percentage=$((progress * 100 / TOTAL_STEPS))

# Exibe a barra de progresso
#echo -ne "Progresso: [$progress/$TOTAL_STEPS] $percentage%\r"

# Dorme pelo intervalo especificado antes da próxima atualização
sleep $SLEEP_INTERVAL

sleep 3

#echo -e "\nInstalação do ZSH concluída!"

# Instalação do complemento Oh-My-ZSH

echo "Instalando zsh e complementos com Oh-My-ZSH..."

# Exibe a barra de progresso
echo -ne "Progresso: [$progress/$TOTAL_STEPS] $percentage%\r"

# Executa o comando de instalação do Oh-My-ZSH e redireciona a saída para /dev/null
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh > /dev/null 2>&1

# Definir ZSH como shell padrão
echo "Definindo ZSH como shell padrão..."

# Comando para definir ZSH como shell padrão
sudo usermod --shell $(which zsh) $USER > /dev/null 2>&1

# Mensagem de conclusão
echo "Instalação do Oh-My-ZSH concluída!"
 
# Iniciar Zsh
echo "Iniciando o Zsh..."
exec zsh
