Algoritmo "Projeto"


Var

procedimento divisao
var
   // VARIAVEIS QUE SER�O USADAS PARA A REALIZA��O DA DIVIS�O
   numero1, numero2: real
inicio
   // OBTEM O PRIMEIRO NUMERO PARA A REALIZA��O DA DIVISAO
   escreva("Digite um n�mero: ")
   leia(numero1)

   // OBTEM O SEGUNDO NUMERO PARA A REALIZA��O DA DIVIS�O
   escreva("Digite o divisor: ")
   leia(numero2)

   // VALIDA A ENTRADA DO USUARIO DO SEGUNDO NUMERO.
   // � NECESSARIO SER DIFERENTE DE 0,
   // PARA QUE N�O SEJA REALIZADO A DIVIS�O POR 0
   se numero2 <> 0 entao
      // FAZ A DIVIS�O E MOSTRA O RESULTADO
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


      // VERIFICA SE A PESSOA DIGITOU O SEXO CORRETAMENTE
      se ehMasculino(sexoPessoaAtual) ou ehFeminino(sexoPessoaAtual) entao

         // FICA REPETINDO ENQUANTO O USUARIO N�O DIGITAR UMA IDADE VALIDA
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
   escreval("M�dia de idade feminina: ", totalIdadeFeminino / totalFeminino)
   escreval("M�dia de idade masculino: ", totalIdadeMasculina / totalMasculino)
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
         // VERIFICA SE O DETERMINADO NUMERO DIVIDO POR DETERMINADO DIVISOR RESTA UMA DIVIS�O INTEIRA
         se numeroAtual mod divisor = 0 entao
            quantidadeDivisores <- quantidadeDivisores + 1
         fimse
      fimpara

      // VERIFICA SE O NUMERO � PRIMO VENDO A QUANTIDADE DE DIVISORES
      se quantidadeDivisores = 2 entao
         somaPrimos <- somaPrimos + numeroAtual
      fimse
   fimpara
   escreva("A soma de primos de ", 1, " at� ", numeroUsuario, " � igual a ", somaPrimos)
fimprocedimento

procedimento maiorMenorMedia
var
   maior, menor, soma, numeroAtual: real
   quantidadeNumeros, contador: inteiro
inicio
   escreva("Digite a quantidade de n�meros que deseja informar: ")
   leia(quantidadeNumeros)

   para contador de 1 ate quantidadeNumeros faca
      escreva("Digite o ", contador, "� n�mero: ")
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
   escreval("M�dia: ", soma / quantidadeNumeros)

fimprocedimento

procedimento codigoMorse
var
   numero, i: inteiro
   numeroCaractere: caractere
inicio

   // REPETE ATE QUE O USUARIO DIGITE UM NUMERO DE 0 A 20
   repita
      escreva("Digite um n�mero de 0 a 20: ")
      leia(numero)
      // VALIDA SE O USUARIO ENTROU COM UM NUMERO ENTRE 0 E 20
      se (numero >= 0) e (numero <= 20) entao
         numeroCaractere <- numpcarac(numero)
         para i de 1 ate compr(numeroCaractere) faca
            escreva(converteNumeroParaMorse(copia(numeroCaractere, i, i)))
         fimpara
      fimse
   ate (numero >= 0) e (numero <= 20)

fimprocedimento

procedimento mudancaDeBase
var
   numero: caractere
   quantidadeNumeros, i: inteiro
inicio
   escreva("Digite a quantidade de n�meros que desaja converter: ")
   leia(quantidadeNumeros)

   escreval("Digite o numero e especifique a base.")
   escreval("Ex: 100110B - Numero binario; 56D - Numero decimal.")

   enquanto i < quantidadeNumeros faca
      escreva("Digite o ", i + 1, "� n�mero: ")
      leia(numero)

      se ehBinario(numero) entao             // ESSA PARTE TIRA A LETRA NO FINAL DA ENTRADA DO USUARIO
         escreval(converteBinarioParaDecimal(copia(numero, 1, compr(numero) - 1)))
      senao
         se ehDecimal(numero) entao                       // ESSA PARTE TIRA A LETRA NO FINAL DA ENTRADA DO USUARIO
            escreval(converteDecimalParaBinario(caracpnum(copia(numero, 1, compr(numero) - 1))))
         senao
            escreval("Tipo de n�mero invalido! ")
            i <- i - 1
         fimse
      fimse
      i <- i + 1
   fimenquanto
fimprocedimento

funcao ehMasculino (sexo: caractere): logico
inicio
   retorne (sexo = "M") ou (sexo = "m")
fimfuncao

funcao ehFeminino (sexo: caractere): logico
inicio
   retorne (sexo = "F") ou (sexo = "f")
fimfuncao

funcao ehBinario(numero: caractere): logico
inicio      // PEGA A PARTE DA LETRA E COMPARA COM B
   retorne (minusc(copia(numero, compr(numero), 1)) = "b") e binarioEhValido(copia(numero, 1, compr(numero) - 1))
fimfuncao

funcao ehDecimal(numero: caractere): logico
inicio     // PEGA A PARTE DA LETRA E COMPARA COM B
   retorne minusc(copia(numero, compr(numero), 1)) = "d"
fimfuncao

funcao converteNumeroParaMorse (numero: caractere): caractere
inicio
   escolha numero
   caso "0"
      retorne "----- "
   caso "1"
      retorne ".---- "
   caso "2"
      retorne "..--- "
   caso "3"
      retorne "...-- "
   caso "4"
      retorne "....- "
   caso "5"
      retorne "..... "
   caso "6"
      retorne "-.... "
   caso "7"
      retorne "--... "
   caso "8"
      retorne "---.. "
   caso "9"
      retorne "----. "
   fimescolha
fimfuncao

funcao converteDecimalParaBinario(decimal: real): caractere
var
   binario: caractere
   restoDivisao: inteiro
inicio
   enquanto decimal > 1 faca
      restoDivisao <- decimal mod 2
      binario <- numpcarac(restoDivisao) + binario
      decimal <- (decimal - restoDivisao) / 2
   fimenquanto
   retorne numpcarac(decimal) + binario
fimfuncao

funcao converteBinarioParaDecimal(binario: caractere): real
var
   i, ii: inteiro
   decimal: real
inicio
   ii <- compr(binario)
   // VARRE TODOS OS CARACTERES DO NUMERO BINARIO E CONVERTE PARA BINARIO
   enquanto i < compr(binario) faca
      decimal <- decimal + caracpnum(copia(binario, ii, 1)) * exp(2, i)
      i <- i + 1
      ii <- ii - 1
   fimenquanto
   retorne decimal
fimfuncao

funcao binarioEhValido(binario: caractere): logico
var
   i: inteiro
   temNumeroSoBinario: logico
inicio
   temNumeroSoBinario <- verdadeiro
   para i de 1 ate compr(binario) faca
      // VERIFICA SE O USUARIO DIGITOU SOMENTE 0 E 1
      se nao((copia(binario, i, 1) = "1") ou (copia(binario, i, 1) = "0")) entao
         temNumeroSoBinario <- falso
      fimse
   fimpara
   retorne temNumeroSoBinario
fimfuncao

opcao: inteiro
Inicio

   repita
      escreval
      escreval
      escreval("=============MENU=============")
      escreval("[1] - Divis�o")
      escreval("[2] - Faixa Et�ria")
      escreval("[3] - N�meros Primos")
      escreval("[4] - Retornar o Maior, Menor e M�dia")
      escreval("[5] - C�digo Morse")
      escreval("[6] - Mudan�a de Base")
      escreval("[7] - Sair")
      escreval("=============MENU=============")
      escreva("Escolha uma op��o: ")
      leia(opcao)
      escreval
      escreval
      escolha opcao
      caso 1
         divisao
      caso 2
         faixaEtaria
      caso 3
         numerosPrimos
      caso 4
         maiorMenorMedia
      caso 5
         codigoMorse
      caso 6
         mudancaDeBase
      caso 7
         escreval("Saindo do programa...")
      outrocaso
         escreval("Op��o Invalida")
      fimescolha
   ate opcao = 7
Fimalgoritmo
