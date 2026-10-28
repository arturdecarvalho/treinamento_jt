algoritmo "GuardaChuva"

var
   chance: real

inicio
   escreva("Digite a chance de chuva (em %): ")
   leia(chance)

   se chance > 50 entao
      escreval("Leve o guarda-chuva!")
   senao
      escreval("Não precisa levar.")
   fimse

fimalgoritmo
