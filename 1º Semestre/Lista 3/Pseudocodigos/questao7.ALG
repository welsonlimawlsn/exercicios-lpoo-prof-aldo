Algoritmo "semnome"

Var

   mediaAluno, totalTurma, maior, menor: real
   quantidadeAlunos: inteiro

Inicio

   escreva("Digite a nota do 1 aluno: ")
   leia(mediaAluno)

   enquanto mediaAluno >= 0 faca
      totalTurma <- totalTurma + mediaAluno
      quantidadeAlunos <- quantidadeAlunos + 1
      se quantidadeAlunos = 1 entao
         maior <- mediaAluno
         menor <- mediaAluno
      senao
         se mediaAluno > maior entao
            maior <- mediaAluno
         fimse
         se mediaAluno < menor entao
            menor <- mediaAluno
         fimse
      fimse
      escreva("Digite a nota do ", quantidadeAlunos + 1, " aluno: ")
      leia(mediaAluno)
   fimenquanto
   
   escreval("Maior: ", maior)
   escreval("Menor: ", menor)
   escreval("Média: ", totalTurma / quantidadeAlunos)

Fimalgoritmo