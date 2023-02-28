#!/bin/bash 
  
#################################################### 
# 
#        Soma.sh – Script de leitura 
#        Autor: Yasmin Devegili 
#        Data de criação: 20/02/2023 
#        Script que lê dois valores, realiza e exibe 
#        a soma. 
# 
#################################################### 
  
echo " " 
echo "Script de Soma" 
echo " " 
read -p "Por favor digite o primeiro número: " VALOR1 
read -p "Por favor digite o segundo número: " VALOR2 
  
echo "A soma é: $(expr $VALOR1 + $VALOR2)" 
echo " " 
echo "Fim do Script" 
