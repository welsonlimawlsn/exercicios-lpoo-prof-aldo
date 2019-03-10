Algoritmo "semnome"

Var

   numero1, numero2: real

Inicio

   escreva("Digite o primeiro número: ")
   leia(numero1)

   escreva("Digite o segundo número: ")
   leia(numero2)

   se numero1 = numero2 entao
      escreva("Os dois números são iguais!")
   senao
      se numero1 > numero2 entao
         escreva(numero1, " é o maior")
      senao
         escreva(numero2, " é o maior")
      fimse
   fimse

Fimalgoritmo