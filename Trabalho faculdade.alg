Algoritmo "semnome"
// Disciplina   : Linguagem e L�gica de Programa��o
// Prof.� Me Ana Fernanda Gomes Ascencio
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/12/2013
Var
   // Se��o de Declara��es das vari�veis
   idade, obrigatorio, facultativo, nao_Eleitor, total_Moradores : inteiro

Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   mudacor("verde", "frente")
   escreval("###################### Bem vindo ########################")
   escreval("#Programa da prefeitura para cadastro de moradores para #")
   escreval("#que no final a prefeitura possa obter a quantidade de  #")
   escreval("#moradores que s�o eleitores obrigatorio, a quantidade  #")
   escreval("#de eleitores que s�o eleitores facultativos e quantos  #")
   escreval("#moradores n�o s�o eleitores                            #")
   escreval("#########################################################")
   escreval("##################!COMO DEVO USAR!#######################")
   escreval("#   O programa come�a recebendo idade de cada morador,  #")
   escreval("#por quantidade indeterminada at� que o usu�rio digite-1#")
   escreval("###################VAMOS COME�AR!!#######################")
   enquanto (idade <> -1) faca

      escreva("Idade: ")
      leia(idade)

      se (idade > 130) ou (idade = 0) ou (idade < -1) entao
         escreval("idade invalida")
      fimse
      
      se (idade >= 18) e (idade <= 69) entao
         obrigatorio <- obrigatorio + 1
      fimse

      se (idade >= 16) e  (idade <= 17) ou (idade >= 70) e (idade <= 130) entao
         facultativo <- facultativo + 1
      fimse
      
      se (idade > 0) e (idade < 16) entao
         nao_Eleitor <- nao_Eleitor + 1
      fimse

   fimenquanto
      total_Moradores <- obrigatorio + facultativo + nao_Eleitor
   escreval("N�mero de moradores que s�o eleitores obrigat�rio ", obrigatorio)
   escreval("N�mero de moradores eleitores facultativos: ", facultativo)
   escreval("N�mero de moradores n�o eleitores: ",nao_Eleitor)
   escreva("Total de moradores cadastrado: ", total_Moradores)

Fimalgoritmo