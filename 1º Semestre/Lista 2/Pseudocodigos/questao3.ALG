Algoritmo "semnome"


Var

   nota1, nota2, nota3, maior: real

Inicio

   escreva("Digite a primeira nota: ")
   leia(nota1)

   escreva("Digite a segunda nota: ")
   leia(nota2)

   escreva("Digite a terceira nota: ")
   leia(nota3)

   maior <- nota1

   se nota2 > maior entao
      maior <- nota2
   fimse
   se nota3 > maior entao
      maior <- nota3
   fimse

   escreval("A maior nota � ", maior)

   escreva("A m�dia � ", (nota1 + nota2 + nota3) / 3)
Fimalgoritmo