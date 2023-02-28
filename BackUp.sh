#!/bin/bash 
  
#Loop para verificar todos os usuário do diretório home 
for user in /home/* 
do 
        MP3=0 
        MP4=0 
        JPG=0 
  
        #Definindo o separador \n 
        OLDIFS=$IFS 
        IFS=$'\n' 
  
        #Loop para verificar todos os arquivos dos diretórios 
        for files in $(find $user -name '*.jpg' -o -name '*.mp4' -o -name '*.mp3') 
        do 
                #contador para os arquivos encontrados 
                case $files in 
                        *.jpg) 
                                JPG=$(expr $JPG + 1) 
                                ;; 
                         *.mp4) 
                                MP4=$(expr $MP4 + 1) 
                                ;; 
                         *.mp3) 
                                MP3=$(expr $MP3 + 1) 
                                ;; 
                esac 
        done 
  
echo " " 
echo "Usuário: $(basename $user)" #basename pega o último nome do caminho/ 
echo "Arquivos JPG: $JPG" 
echo "Arquivos MP4: $MP4" 
echo "Arquivos MP3: $MP3" 
echo " " 
done 
IFS=$OLDIFS 
