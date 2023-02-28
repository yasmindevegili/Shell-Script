#!/bin/bash 
  
echo " " 
HORA=$(date +%H) 
MIN=$(date +%M) 
#verificando o periodo do dia 
if [ $HORA -ge 06 -a $HORA -lt 12 ] 
then 
        echo "Bom dia!" 
elif [ $HORA -ge 12 -a $HORA -lt 17 ] 
then 
        echo "Boa tarde!" 
else 
        echo "Boa noite!" 
fi 
#verificando se ja passou do meio dia 
if [ $HORA -ge 12 ] 
then 
        AMPM=PM 
else 
        AMPM=AM 
fi 
#exibindo no formato 12 horas 
if [ $HORA -gt 12 ] 
then 
        HORA=$(expr $HORA - 12 ) 
fi 
echo " " 
echo "A hora atual é: $HORA:$MIN $AMPM" 
echo " " 
 
