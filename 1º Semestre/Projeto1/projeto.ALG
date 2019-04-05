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

funcao ehMasculino (sexo: caractere):logico
inicio
   retorne (sexo = "M") ou (sexo = "m")
fimfuncao

funcao ehFeminino (sexo: caractere):logico
inicio
   retorne (sexo = "F") ou (sexo = "f")
fimfuncao
Inicio

   faixaEtaria
Fimalgoritmo