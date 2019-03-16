Algoritmo "semnome"

Var

   numero1, numero2, numero3: real

Inicio

   repita
      escreva("Digite o primeiro numero: ")
      leia(numero1)
      
      escreva("Digite o segundo numero: ")
      leia(numero2)
      
      escreva("Digite o terceiro numero: ")
      leia(numero3)
      
      escreval("===== RESULTADO =====")
      
      escreval("Soma: ", (numero1 + numero2 + numero3))
      escreval("Produto: ", (numero1 * numero2 * numero3))
      escreval("Média: ", ((numero1 + numero2 + numero3) / 3))
      
      escreval("=====================")
      escreval()
   ate nao((numero1 < numero2) e (numero2 < numero3))

Fimalgoritmo