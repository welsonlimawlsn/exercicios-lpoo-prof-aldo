Algoritmo "semnome"


Var

   numero, impar, par: inteiro

Inicio

   repita
   escreva("Digite um numero inteiro e positivo: ")
   leia(numero)
      se (numero > 0) e (numero <= 1000) entao
         se numero mod 2 = 0 entao
            par <- par + numero
         senao
            impar <- impar + numero
         fimse
      fimse
   ate numero > 1000
   
   escreval("Impar: ", impar)
   escreval("Par: ", par)



Fimalgoritmo