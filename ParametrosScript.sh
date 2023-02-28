#!/bin/bash 
######################################### 
# 
#        Usuario - Leitura utilizando 
#        parametros. 
#        Autor: Yasmin Devegili 
#        Data de criação: 20/02/2023 
#        Recebendo nome de usuário por 
#        parametro e exibindo informações 
# 
######################################### 
  
# $0 - Nome do programa 
# $# - Quantidade de parametros 
# $* - Todos os parametros inseridos 
# $1 - 9 - Cada um dos parametros 
  
#ls /home/$1 > /dev/null 2>&1 || echo "Usuário inexistente" 
#ls /home/$1 > /dev/null 2>$1 || exit 1 
  
ls /home/$1 > /dev/null 2>$1 || { echo "Usuário inexistente"; exit 1; } 
  
USERID=$(grep $1 /etc/passwd| cut -d":" -f3) 
DESC=$(grep $1 /etc/passwd| cut -d":" -f5 | tr -d ,) 
USOHOME=$(du -sh /home/$s1| cut -f1) 
  
clear 
echo "======================================================================================" 
echo "Relatório do Usuário: $1" 
echo " " 
echo "UID: $USERID" 
echo "Nome ou Descrição: $DESC" 
echo "Total usado no /home/$1: $USOHOME" 
echo " " 
echo "Último Login: " 
lastlog -u $1 
echo "=======================================================================================" 
exit 0 
  
  
echo "Fim do Script" 
