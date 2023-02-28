# Shell-Script
## Scripts made during Udemy Course: Programação Shell Script - Automatizando Rotinas no Linux, below you can find the description (in portuguese) of each exercise commited.

MeuPrimeiroScript.sh: Meu Primeiro Script 

SomaScript.sh: Crie um Script que após executado solicite dois valores como entrada. Esses valores devem ser somados e o resultado exibido para o usuário. 

SistemaScript.sh: Crie um script que gere um relatório de algumas informações da máquina atual:  
• Nome da Máquina  
• Data e Hora Atual  
• Desde quando a máquina está ativa  
• Versão do Kernel  
• Quantidade de CPUs/Cores  
• Modelo da CPU  
• Total de Memória RAM Disponível  
• Partições 

ParametrosScript.sh: Crie um script que receba um nome de usuário como parâmetro e exiba as  
seguintes informações: 
• UID do usuário 
• Nome Completo / Descrição do Usuário 
• Total em Uso no /home do usuário 
• Informações do último login do usuário 
• [Opcional] Validar se o usuário existe ou não sem o uso do if, que ainda  
não foi estudado. Se não existir retorne o exit code 1, se existir retorne  
exit 0  

DataComCondicinal.sh: Crie um script que baseado no horário atual escreva “Bom Dia”, “Boa Tarde” ou 
“Boa Noite”. Considere que o começo do dia às 06:00. 
O mesmo script deve mostrar também a hora atual no formato de 0 a 12,  
indicando AM ou PM. 

ArquivosScript.sh: Crie um script que gere um arquivo compactado de backup de todo o diretório  
home do usuário atual (/home/<usuario>). 
Considere que: 
• O arquivo de backup será criado no diretório /home/<usuario>/Backup 
• O nome do arquivo de backup deve seguir o padrão  
backup_home_AAAAMMDDHHMM.tgz, exemplo  
backup_home_201708241533.tgz 
• Caso o diretório /home/<usuario>/Backup não exista, o script deve criá-lo 
• Antes de criar o backup, o script deve consultar se existe algum arquivo  
de backup criado na última semana. Se existir, o usuário deve ser  
consultado se deseja continuar. Se o usuário optar por não continuar, o  
script deve abortar com código de saída 1. 
• Após gerar o backup, o script deve informar o nome do arquivo gerado.

CalculadoraScript.sh: Crie um script que receba do usuário 2 valores e em seguida exiba um menu  
para ele escolha uma das 4 principais operações aritmétricas (soma,  
subtração, multiplicação e divisão). Após isso a operação e o resultado são  
exibidos ao usuário. 
Considere que: 
• O script deve validar e abortar a execução caso algum dos valores não  
seja informado 
• No caso de multiplicação, o script deve exibir uma mensagem de erro  
caso um dos valores seja 0, e então abortar 
• No caso de divisão, o script deve exibir uma mensagem de erro caso um  
dos valores seja 0, e então abortar 
• Também no caso de divisão, o script deve exibir se é uma divisão exata  
ou com resto. 

VerificaHumano.sh: Crie um script que mostre todos os usuários “humanos” da máquina seguidos de seu UID, Diretório Home e Nome/Descrição. 
 
VerificaProcesso.sh: Crie um script que receba um nome de processo como argumento e que  
constantemente irá verificar se o processo está em execução.  
Caso não esteja, deve ser exibida uma mensagem na sessão do usuário a cada 
x segundos. 
O processo deve rodar como Daemon, ou seja, deve estar sempre em  
execução, verificando o processo em questão a cada x segundos. 

BackUp.sh: Fazer um script que inspecione os diretórios /home/ de todos os usuários em  
busca de arquivos com as extensões .mp3, .mp4 e .jpg. 
O script deve gerar como saída final um relatório com a quantidade de cada  
tipo de arquivo para cada usuário. 
 
