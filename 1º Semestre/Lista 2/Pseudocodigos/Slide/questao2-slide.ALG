algoritmo "Opções de desconto"
var
   OPCAO: inteiro
inicio
   escreva("Escolha a opcao de desconto(1, 2, 3 ou 4): ")
   leia(OPCAO)

   escolha OPCAO
   caso 1
      escreva("Dar desconto de 20%")
   caso 2
      escreva("Dar desconto de 15%")
   caso 3
      escreva("Dar desconto de 10%.")
   caso 4
      escreva("Dar desconto de 5%.")
   outrocaso
      escreva("Não dar desconto.")
   fimescolha
fimalgoritmo