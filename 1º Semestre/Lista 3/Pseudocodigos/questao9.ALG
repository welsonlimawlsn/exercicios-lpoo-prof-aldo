Algoritmo "semnome"

Var
   numero, divisor, quantidadeDivisores: inteiro

Inicio

   divisor <- 1

   escreva("Digite um número: ")
   leia(numero)

   enquanto (quantidadeDivisores <= 2) e (divisor <= numero) faca
      se numero mod divisor = 0 entao
         quantidadeDivisores <- quantidadeDivisores + 1
      fimse
      divisor <- divisor + 1
   fimenquanto

   se quantidadeDivisores = 2 entao
      escreva("É primo!")
   senao
      escreva("Não é primo")
   fimse

Fimalgoritmo