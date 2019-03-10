Algoritmo "semnome"

Var

   numero1, numero2, numero3, temporario: real

Inicio

   escreva("Digite o primeiro número: ")
   leia(numero1)

   escreva("Digite o segundo número: ")
   leia(numero2)

   escreva("Digite o terceiro número: ")
   leia(numero3)

   se numero2 < numero1 entao
      temporario <- numero1
      numero1 <- numero2
      numero2 <- temporario
   fimse
   se numero3 < numero2 entao
      temporario <- numero2
      numero2 <- numero3
      numero3 <- temporario
   fimse
   se numero2 < numero1 entao
      temporario <- numero1
      numero1 <- numero2
      numero2 <- temporario
   fimse
   
   escreva(numero1, ", ", numero2, ", ", numero3)

Fimalgoritmo