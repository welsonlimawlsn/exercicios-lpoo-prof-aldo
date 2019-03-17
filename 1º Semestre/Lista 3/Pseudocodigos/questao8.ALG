Algoritmo "semnome"
Var
   numeroMaximo, i: inteiro

Inicio
   escreva("Digite até que número deseja? ")
   leia(numeroMaximo)

   escreval("Números pares: ")

   para i de 1 ate numeroMaximo passo 1 faca
      se i mod 2 = 0 entao
         escreval(i)
      fimse
   fimpara

   escreval("Números impares: ")

   para i de 1 ate numeroMaximo passo 1 faca
      se i mod 2 = 1 entao
         escreval(i)
      fimse
   fimpara

Fimalgoritmo