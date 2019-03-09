Algoritmo "semnome"

Var
   numero1, numero2, numero3: real
   opcao: inteiro

Inicio

   escreva("Digite o primeiro numero: ")
   leia(numero1)

   escreva("Digite o segundo numero: ")
   leia(numero2)

   escreva("Digite o terceiro numero: ")
   leia(numero3)

   escreval("[1] SOMA")
   escreval("[2] MÉDIA")
   escreval("[3] MUTIPLICAÇÃO")
   leia(opcao)

   // aqui o escolha-caso funcionou usando o tipo inteiro
   escolha opcao
   caso 1
      escreva("Resultado: ", (numero1 + numero2 + numero3))
   caso 2
      escreva("Resultado: ", ((numero1 + numero2 + numero3) / 3))
   caso 3
      escreva("Resultado: ", (numero1 * numero2 * numero3))
   outrocaso
      escreva("Opção invalida!")
   fimescolha
Fimalgoritmo