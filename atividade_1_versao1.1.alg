Algoritmo "Atividade1"
// Disciplina   : Linguagem e L�gica de Programa��o
// Prof.�       : Ana Fernanda Gomes Ascencio
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Paulo Daniel de Araujo
// Data atual  : 20/11/2019
Var
   // Se��o de Declara��es das vari�veis
   _quant_Livros : inteiro
   _descontoA, _descontoB, _descontoC, _precoA, _precoB, _precoC : real

   //Variaveis para receber o retorno da fun��o fx_Calc_Criterios
   _criterioA, _criterioB, _criterioC : real

   //fun��o para calcular o valor a ser pago, atraves dos criterios
   //fun��o recebe dos parametros: quantidade de livros
   //e o valor do desconto mais o pre�o fixo e retorna o valor ajustado
funcao fx_Calc_Criterios(quant : inteiro; desconto, preco_Fixo : real) : real
var
   _funcaoX : real
inicio
   _funcaoX <- (quant * desconto) + preco_Fixo
   retorne _funcaoX
fimfuncao


//procedimento para definir qual o melhor criterio
procedimento _melhor_Criterio(criterioA, criterioB, criterioC : real)
inicio

   //condi��es que verifica o melhor criterio
   se (criterioA < criterioB) e (criterioA < criterioC) entao
      escreval("O melhor criterio A = ", criterioA)
   fimse

   se (criterioB < criterioA) e (criterioB < criterioC) entao
      escreval("O melhor criterio B = ", criterioB)
   fimse

   se (criterioC < criterioA) e (criterioC < criterioB) entao
      escreval("O melhor criterio C = ",criterioC)
   fimse

   //condi��es que verifica se os criterios s�o iguas
   se (criterioA = criterioB) entao
      escreval("Os melhores criterios: A = ", criterioA, " e B = ", criterioB)
   fimse

   se (criterioA = criterioC) entao
      escreval("Os melhores criterios: A = ", criterioA, " e C = ", criterioC)
   fimse

   se (criterioB = criterioC) entao
      escreval("Os melhores criterios: B = ", criterioB, " e C = ", criterioC)
   fimse

fimprocedimento

Inicio

   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   //variaveis para ser passadas como paramentros para fx_Calc_Criterios
   _descontoA <- 0.25
   _descontoB <- 0.50
   _descontoC <- 0.65
   _precoA <- 7.5
   _precoB <- 2.5
   _precoC <- 1.5
   mudacor("verde", "frente")
   
   //processamento da entrada de dados e saida dos mesmos
   escreva("Digite a quantidade de livros que se deseja comprar: ")
   leia(_quant_Livros)

   //Variaveis para receber o retorno da fun��o fx_Calc_Criterios
   _criterioA <- fx_Calc_Criterios(_quant_Livros, _descontoA, _precoA)
   _criterioB <- fx_Calc_Criterios(_quant_Livros, _descontoB, _precoB)
   _criterioC <- fx_Calc_Criterios(_quant_Livros, _descontoC, _precoC)

   //procedimento que decide qual o melhor criterio
   escreval("########################################################")
   _melhor_Criterio(_criterioA, _criterioB, _criterioC)
   escreval()
   escreval("########################################################")
   escreval("Valor � pagar de acordo com todos os criterios abaixo")
   escreval("valor do criterio A = ", _criterioA)
   escreval("valor do criterio B = ", _criterioB)
   escreval("valor do criterio C = ", _criterioC)

Fimalgoritmo

{
Deve-se criar um algoritmo que receba a quantidade de livros que
   deseja comprar e pautado na quantidade exibir ao usu�rio qual
   o melhor crit�rio � se utilizar. O melhor crit�rio se dar�
   pelo MENOR VALOR � Pagar de acordo com as informa��es abaixo:

   Crit�rio A: Custo Fixo de 7,50 e Desconto de 0,25
   Crit�rio B: Custo Fixo de 2,50 e Desconto de 0,50
   Crit�rio C: Custo Fixo de 1,50 e Desconto de 0,65

   O Valor � Pagar se dar� pela express�o
   Custo Fixo + (Quantidade * Desconto).
Percebam que esta vari�vel ter� seu valor alterado de acordo
   com a Quantidade de Livros comprados

   Exemplificando 3 cen�rios, onde em CADA UM DELES o MELHOR CRIT�RIO SER�
   DIFERENTE:

   Quantidade 1 > A: 7.75; B: 3; C: 2.15 > Melhor(es) Crit�rio(s): C
   Quantidade 7 > A: 9.25; B: 6; C: 6.05 > Melhor(es) Crit�rio(s): B
   Quantidade 21 > A: 12.75; B: 13; C: 15.15 > Melhor(es) Crit�rio(s): A

   H� cen�rios onde mais de um crit�rio pode ser o melhor.
   Veja um exemplo:

   Quantidade 20 > A: 12.5; B: 12.5; C: 14.5 > Melhor(es) Crit�rio(s):
   A e B

   O algoritmo portanto deve dizer ao final
   qual(quais) o(s) MELHOR(ES) CRIT�RIO(S).
   }