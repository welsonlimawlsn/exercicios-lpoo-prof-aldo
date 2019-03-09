Algoritmo "semnome"

Var
   numero: inteiro

Inicio

   escreva("Digite um número: ")
   leia(numero)

   se numero mod 2 = 0 entao
      escreval("O número é PAR")
   senao
      escreval("O número é IMPAR")
   fimse

   se numero = 0 entao
      escreva("O número é NEUTRO")
   senao
      se numero > 0 entao
         escreva("O número é POSITIVO")
      senao
         escreva("O número é NEGATIVO")
      fimse
   fimse

Fimalgoritmo
