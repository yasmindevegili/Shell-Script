#!/bin/bash 
  
echo " " 
echo "Digite o primeiro valor: " 
read VALOR1 
echo "Digite o segundo valor: " 
read VALOR2 
  
#Validando se uma das entradas é nula 
if [ ! $VALOR1 ] || [ ! $VALOR2 ] 
then 
        echo "Entrada inválida" 
        #saida de erro 
        exit 1 
fi 
  
#Menu de opções 
echo " " 
echo "1 - Soma" 
echo "2 - Subtração" 
echo "3 - Multiplicação" 
echo "4 - Divisão" 
echo "5 - Sair" 
echo " " 
echo "Digite a sua opção: " 
read OPCAO 
  
#Saida de cada opcao 
case $OPCAO in 
        1) 
                OPER="+" 
                ;; 
        2) 
                OPER="-" 
                ;; 
        3) 
                if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ] 
                then 
                        echo "Impossível de realizar a multiplicação com 0." 
                        exit 1 
                fi 
                OPER="*" 
                ;; 
  
        4) 
                if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ] 
                then 
                        echo "Um valor 0 não pode ser utilizado em uma divisão." 
                        exit 1 
                else 
                        OPER="/" 
                fi 
                ;; 
        5) 
                echo "Saindo ..." 
                exit 
                ;; 
        *) 
                echo "Opção Inválida" 
                exit 1 
                ;; 
esac 
echo "$VALOR1 $OPER $VALOR2 = $(expr $VALOR1 "$OPER" $VALOR2)" 
