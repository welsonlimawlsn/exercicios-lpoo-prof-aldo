Algoritmo "semnome"
Var

   valor, maior, menor: real
   i: inteiro
Inicio

   para i de 0 ate 14 passo 1 faca
      escreva("Digite um número real: ")
      leia(valor)
      se i = 0 entao
         maior <- valor
         menor <- valor
      senao
         se valor > maior entao
            maior <- valor
         fimse
         se valor < menor entao
            menor <- valor
         fimse
      fimse
   fimpara

   escreval("Menor: ", menor)
   escreval("Maior: ", maior)

Fimalgoritmo