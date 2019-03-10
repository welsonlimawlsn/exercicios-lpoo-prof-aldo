Algoritmo "semnome"

Var

   trabalhoLaboratorio, avaliacaoSemestral, exameFinal, media: real
   conceito: caractere

Inicio

   escreva("Trabalho de Laboratorio: ")
   leia(trabalhoLaboratorio)

   escreva("Avaliação Semestral: ")
   leia(avaliacaoSemestral)

   escreva("Exame Final: ")
   leia(exameFinal)

   media <- (trabalhoLaboratorio + avaliacaoSemestral + exameFinal) / 3

   se media < 5 entao
      conceito <- "E"
   senao
      se media < 6 entao
         conceito <- "D"
      senao
         se media < 7 entao
            conceito <- "C"
         senao
            se media < 8 entao
             conceito <- "B"
            senao
                 conceito <- "A"
            fimse
         fimse
      fimse
   fimse
   
   escreval("==========================")
   escreval("Média: ", media)
   escreval("Conceito: ", conceito)

Fimalgoritmo