Algoritmo "Volume"

Var

   volume, diametro, altura, raio: real
Inicio

      escreva("Digite a altura da lata: ")
      leia(altura)
      
      escreva("Digite o diametro da lata: ")
      leia(diametro)
      
      raio <- diametro / 2
      
      volume <- exp(raio, 2) * PI * altura
      
      escreva("Volume da lata: ", volume)

Fimalgoritmo