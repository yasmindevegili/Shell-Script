#!/bin/bash 
  
######################################### 
# 
#        Sistema.sh – Script de leitura 
#        Autor: Yasmin Devegili 
#        Data de criação: 20/02/2023 
#        Exibe dados do sistema 
# 
######################################### 
  
DATE=$(date) 
HOSTNAME=$(hostname) 
UPTIME=$(uptime -s) 
KERNELL=$(uname -r) 
CPU=$(cat /proc/cpuinfo | grep "model name" |wc -l) 
CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | head -n1| cut -c14-) 
MEMORIA=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' '| cut -d: -f2|tr -d kB) / 1024) #Em MB 
PARTICOES=$(df) 
  
echo " " 
echo "================================" 
echo "Relatório da Máquina: $HOSTNAME " 
echo "Data e hora atual: $DATE " 
echo "================================" 
echo " " 
echo "Máquina ativa por: $UPTIME " 
echo " " 
echo "Versão do Kernel: $KERNELL " 
echo " " 
echo "Quantidade de CPUs/Cores: $CPU " 
echo " " 
echo "Modelo da CPU: $CPUMODEL " 
echo " " 
echo "Memória RAM: $MEMORIA " 
echo " " 
echo "Partições: $PARTICOES " 
echo " " 
echo "Fim do Script" 
 
