Algoritmo "semnome"
Var
   numeroMaximo, i: inteiro

Inicio
   escreva("Digite at� que n�mero deseja? ")
   leia(numeroMaximo)

   escreval("N�meros pares: ")

   para i de 1 ate numeroMaximo passo 1 faca
      se i mod 2 = 0 entao
         escreval(i)
      fimse
   fimpara

   escreval("N�meros impares: ")

   para i de 1 ate numeroMaximo passo 1 faca
      se i mod 2 = 1 entao
         escreval(i)
      fimse
   fimpara

Fimalgoritmo