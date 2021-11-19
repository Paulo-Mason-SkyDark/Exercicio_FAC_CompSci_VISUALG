Algoritmo "semnome"
// Disciplina   : Linguagem e Lógica de Programação
// Prof.ª Me Ana Fernanda Gomes Ascencio
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 06/12/2013
Var
   // Seção de Declarações das variáveis
   idade, obrigatorio, facultativo, nao_Eleitor, total_Moradores : inteiro

Inicio
   // Seção de Comandos, procedimento, funções, operadores, etc...
   mudacor("verde", "frente")
   escreval("###################### Bem vindo ########################")
   escreval("#Programa da prefeitura para cadastro de moradores para #")
   escreval("#que no final a prefeitura possa obter a quantidade de  #")
   escreval("#moradores que são eleitores obrigatorio, a quantidade  #")
   escreval("#de eleitores que são eleitores facultativos e quantos  #")
   escreval("#moradores não são eleitores                            #")
   escreval("#########################################################")
   escreval("##################!COMO DEVO USAR!#######################")
   escreval("#   O programa começa recebendo idade de cada morador,  #")
   escreval("#por quantidade indeterminada até que o usuário digite-1#")
   escreval("###################VAMOS COMEÇAR!!#######################")
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
   escreval("Número de moradores que são eleitores obrigatório ", obrigatorio)
   escreval("Número de moradores eleitores facultativos: ", facultativo)
   escreval("Número de moradores não eleitores: ",nao_Eleitor)
   escreva("Total de moradores cadastrado: ", total_Moradores)

Fimalgoritmo