Algoritmo "Projeto"


Var

procedimento divisao
var
   // VARIAVEIS QUE SERÃO USADAS PARA A REALIZAÇÃO DA DIVISÃO
   numero1, numero2: real
inicio
   // OBTEM O PRIMEIRO NUMERO PARA A REALIZAÇÃO DA DIVISAO
   escreva("Digite um número: ")
   leia(numero1)

   // OBTEM O SEGUNDO NUMERO PARA A REALIZAÇÃO DA DIVISÃO
   escreva("Digite o divisor: ")
   leia(numero2)

   // VALIDA A ENTRADA DO USUARIO DO SEGUNDO NUMERO.
   // É NECESSARIO SER DIFERENTE DE 0,
   // PARA QUE NÃO SEJA REALIZADO A DIVISÃO POR 0
   se numero2 <> 0 entao
      // FAZ A DIVISÃO E MOSTRA O RESULTADO
      escreva("Resultado: ", numero1 / numero2)
   senao
      // CASO O USUARIO DIGITE 0, MOSTRA ESSA MENSAGEM
      escreva("O divisor tem que ser diferente de 0!")
   fimse
fimprocedimento

procedimento faixaEtaria
var
   totalPessoas, totalFeminino, totalMasculino, totalIdadeFeminino, totalIdadeMasculina, contador, idadePessoaAtual: inteiro
   sexoPessoaAtual: caractere
inicio
   escreva("Digite a quantidade de pessoas que deseja inserir: ")
   leia(totalPessoas)

   enquanto contador < totalPessoas faca
      escreva("Digite o sexo da pessoa ([M - Masculino][F - Feminino]): ")
      leia(sexoPessoaAtual)

      se ehMasculino(sexoPessoaAtual) ou ehFeminino(sexoPessoaAtual) entao

         repita
            escreva("Digite a idade: ")
            leia(idadePessoaAtual)

            se idadePessoaAtual < 0 entao
               escreval("Idade Invalida")
            fimse
         ate idadePessoaAtual >= 0

         se ehMasculino(sexoPessoaAtual) entao
            totalMasculino <- totalMasculino + 1
            totalIdadeMasculina <- totalIdadeMasculina + idadePessoaAtual
         senao
            totalFeminino <- totalFeminino + 1
            totalIdadeFeminino <- totalIdadeFeminino + idadePessoaAtual
         fimse

         contador <- contador + 1
      senao
         escreval("Sexo Invalido")
      fimse
   fimenquanto

   escreval("Media de idade: ", (totalIdadeFeminino + totalIdadeMasculina) / totalPessoas)
   escreval("Média de idade feminina: ", totalIdadeFeminino / totalFeminino)
   escreval("Média de idade masculino: ", totalIdadeMasculina / totalMasculino)
fimprocedimento

procedimento numerosPrimos
var
   numeroUsuario, somaPrimos, numeroAtual, quantidadeDivisores, divisor: inteiro
inicio
   escreva("Digite um numero: ")
   leia(numeroUsuario)

   para numeroAtual de 1 ate numeroUsuario faca
      quantidadeDivisores <- 0

      para divisor de 1 ate numeroAtual faca
         se numeroAtual mod divisor = 0 entao
            quantidadeDivisores <- quantidadeDivisores + 1
         fimse
      fimpara

      se quantidadeDivisores = 2 entao
         somaPrimos <- somaPrimos + numeroAtual
      fimse
   fimpara
   escreva("A soma de primos de ", 1, " até ", numeroUsuario, " é igual a ", somaPrimos)
fimprocedimento

procedimento maiorMenorMedia
var
   maior, menor, soma, numeroAtual: real
   quantidadeNumeros, contador: inteiro
inicio
   escreva("Digite a quantidade de números que deseja informar: ")
   leia(quantidadeNumeros)

   para contador de 1 ate quantidadeNumeros faca
      escreva("Digite o ", contador, "º número: ")
      leia(numeroAtual)

      se contador = 1 entao
         maior <- numeroAtual
         menor <- numeroAtual
      senao
         se numeroAtual > maior entao
            maior <- numeroAtual
         fimse

         se numeroAtual < menor entao
            menor <- numeroAtual
         fimse
      fimse

      soma <- soma + numeroAtual
   fimpara

   escreval("Maior: ", maior)
   escreval("Menor: ", menor)
   escreval("Média: ", soma / quantidadeNumeros)

fimprocedimento

procedimento codigoMorse
var
   numero: inteiro
inicio

   repita
      escreva("Digite um número de 0 a 20: ")
      leia(numero)
      se (numero >= 0) e (numero <= 20) entao
         se numero < 10 entao
            escreval(converteNumeroParaMorse(numero))
         senao
            se (numero = 10) ou (numero = 20) entao
               escreval(converteNumeroParaMorse(numero / 10), converteNumeroParaMorse(0))
            senao
               escreval(converteNumeroParaMorse(1), converteNumeroParaMorse(numero - 10))
            fimse
         fimse
      fimse
   ate (numero >= 0) e (numero <= 20)

fimprocedimento

funcao ehMasculino (sexo: caractere): logico
inicio
   retorne (sexo = "M") ou (sexo = "m")
fimfuncao

funcao ehFeminino (sexo: caractere): logico
inicio
   retorne (sexo = "F") ou (sexo = "f")
fimfuncao

funcao converteNumeroParaMorse (numero: inteiro): caractere
inicio
   escolha numero
   caso 0
      retorne "----- "
   caso 1
      retorne ".---- "
   caso 2
      retorne "..--- "
   caso 3
      retorne "...-- "
   caso 4
      retorne "....- "
   caso 5
      retorne "..... "
   caso 6
      retorne "-.... "
   caso 7
      retorne "--... "
   caso 8
      retorne "---.. "
   caso 9
      retorne "----. "
   fimescolha
fimfuncao

Inicio

   codigoMorse
Fimalgoritmo
