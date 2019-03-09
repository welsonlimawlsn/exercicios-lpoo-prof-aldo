Algoritmo "semnome"

Var

   numero1, numero2, numero3, temporario: real
   condicao: caractere

Inicio

   escreva("Digite o primeiro número: ")
   leia(numero1)

   escreva("Digite o segundo número: ")
   leia(numero2)

   escreva("Digite o terceiro número: ")
   leia(numero3)

   escreva("Qual forma de ordernação? [c] - crescente, [d] - decrescente: ")
   leia(condicao)

   se numero2 < numero1 entao
      temporario <- numero1
      numero1 <- numero2
      numero2 <- temporario
   fimse
   se numero3 < numero2 entao
      temporario <- numero2
      numero2 <- numero3
      numero3 <- temporario
   fimse
   se numero2 < numero1 entao
      temporario <- numero1
      numero1 <- numero2
      numero2 <- temporario
   fimse

   se condicao = "c" entao
      escreva(numero1, ", ", numero2, ", ", numero3)
   fimse
   se condicao = "d" entao
      escreva(numero3, ", ", numero2, ", ", numero1)
   fimse

   // Tentei usar o escolha-caso, mas aqui no meu visualg não está funcionando,
   // acredito que seja algum bug dele, pois não vejo erro algum no
   // meu codigo


   //escolha condicao
   //caso "d"
   //   escreva(numero3, ", ", numero2, ", ", numero1)
   //caso "c"
   //   escreva(numero1, ", ", numero2, ", ", numero3)
   //outrocaso
   //   escreva("Condição não é valida!")
   //fimescolha

Fimalgoritmo