#!/bin/bash 
  
#Tempo que o programa vai esperar para processar dentro do while 
TIME=5 
  
#Verificando se algum parametro foi passado 
if [ $# -eq 0 ] 
then 
        echo "Favor informar um processo como argumento." 
        echo "./Firefox.sh <processo>" 
        exit 1 
fi 
  
#estrutura de repetição para verificar se o processo está ativo 
while true 
do 
        if ps axu | grep $1 | grep -v grep | grep -v $0 > /dev/null 
        then 
                sleep $TIME 
        else 
                echo "Atenção! O processo $1 não está em execução!" 
                sleep $TIME 
        fi 
done 
