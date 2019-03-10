Algoritmo "semnome"


Var
   altura, peso: real

Inicio

   escreva("Digite a sua altura: ")
   leia(altura)

   escreva("Digite o seu peso: ")
   leia(peso)

   se altura < 1.2 entao
      se peso < 60 entao
         escreva("A")
      senao
         se peso >= 60 e peso <=90 entao
            escreva("D")
         senao
            escreva("G")
         fimse
      fimse
   senao
      se altura <= 1.7 entao
         se peso < 60 entao
            escreva("B")
         senao
            se peso <=90 entao
               escreva("E")
            senao
               escreva("H")
            fimse
         fimse
      senao
         se peso < 60 entao
            escreva("C")
         senao
            se peso <= 90 entao
               escreva("F")
            senao
               escreva("I")
            fimse
         fimse
      fimse
   fimse

Fimalgoritmo