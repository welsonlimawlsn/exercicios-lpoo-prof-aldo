Algoritmo "semnome"

Var

   numeroMaximo, numero, quantidadeDivisores, divisor: inteiro

Inicio

   escreva("Digite até que número deve ir: ")
   leia(numeroMaximo)

   para numero de 1 ate numeroMaximo faca
      divisor <- 1
      quantidadeDivisores <- 0
      enquanto (quantidadeDivisores <= 2) e (divisor <= numero) faca
         se numero mod divisor = 0 entao
            quantidadeDivisores <- quantidadeDivisores + 1
         fimse
         divisor <- divisor + 1
      fimenquanto

      se quantidadeDivisores = 2 entao
         escreval(numero)
      fimse
   fimpara

Fimalgoritmo