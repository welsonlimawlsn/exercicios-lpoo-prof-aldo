Algoritmo "Projeto"


Var

procedimento divisao
var
   // VARIAVEIS QUE SERÃO USADAS PARA A REALIZAÇÃO DA DIVISÃO
   numero1, numero2: real
inicio
   // OBTEM O PRIMEIRO NUMERO PARA A REALIZAÇÃO DA DIVISAO
   escreva("Digite um número: ")
   leia(numero1)

   // OBTEM O SEGUNDO NUMERO PARA A REALIZAÇÃO DA DIVISÃO
   escreva("Digite o divisor: ")
   leia(numero2)

   // VALIDA A ENTRADA DO USUARIO DO SEGUNDO NUMERO.
   // É NECESSARIO SER DIFERENTE DE 0,
   // PARA QUE NÃO SEJA REALIZADO A DIVISÃO POR 0
   se numero2 <> 0 entao
      // FAZ A DIVISÃO E MOSTRA O RESULTADO
      escreva("Resultado: ", numero1 / numero2)
   senao
      // CASO O USUARIO DIGITE 0, MOSTRA ESSA MENSAGEM
      escreva("O divisor tem que ser diferente de 0!")
   fimse
fimprocedimento
Inicio

   divisao
Fimalgoritmo