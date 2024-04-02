#!/bin/bash

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
echo -ne "Progresso: [$progress/$TOTAL_STEPS] $percentage%\r"

# Dorme pelo intervalo especificado antes da próxima atualização
sleep $SLEEP_INTERVAL

#echo -e "\nInstalação do ZSH concluída!"
