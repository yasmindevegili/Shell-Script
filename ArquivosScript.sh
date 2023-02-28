DIRDESTINO=$HOME/Backup 
  
#Verificando se existe o diretório 
if [ ! -d $DIRDESTINO ] 
then 
        echo "Criando Diretório $DIRDESTINO..." 
       mkdir -p $DIRDESTINO 
fi 
  
DAYS=$(find $DIRDESTINO -ctime -7 -name backup_home\*tgz) 
  
#Verificando de foi feito outro backup na mesma semana 
if [ "$DAYS" ] 
then 
        echo "Já foi gerado um diretório $HOME nos últimos 7 dias." 
        echo -n "Deseja continuar [N/s]: " 
        read -n1 OPCAO #-n captura apenas um caractere 
        echo " " 
        #Verificando se será feito um novo ou abordato o backup 
        if [ "$OPCAO" = N -o "$OPCAO" = n -o "OPCAO" = "" ] 
        then 
                echo "Backup abortado!" 
                #Programa finalizado 
                exit 1 
        elif [ $OPCAO = S -o $OPCAO = s ] 
        then 
                echo "Será criado mais um backup para a semana" 
        else 
                echo "Opção Inválida" 
                #Saída de erro 
                exit 2 
        fi 
fi 
  
echo "Criando Backup..." 
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz" 
  
#Comando para backup 
tar zcvpf $DIRDESTINO/$ARQ --absolute-names --exclude="$DIRDESTINO" "$HOME"/* > /dev/null 
echo " " 
echo "O Backup $ARQ foi criado em $DIRDESTINO" 
echo " " 
echo "Backup Concluído!"
