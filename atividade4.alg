algoritmo "CompraDeCarro"

var
   cor, fabricante: caractere
   motor, valor, caixa: real

inicio
   caixa <- 40000

   escreva("Digite a cor do automóvel: ")
   leia(cor)

   escreva("Digite o fabricante: ")
   leia(fabricante)

   escreva("Digite a motorização: ")
   leia(motor)

   escreva("Digite o valor do automóvel: ")
   leia(valor)

   se (cor = "AZUL" e fabricante = "Ford" e motor = 1.8 e valor <= caixa e valor > 0) entao
      escreval("Compra aprovada! O automóvel atende a todos os critérios.")
   senao
      escreval("Compra não realizada. O automóvel não atende a todos os critérios.")
   fimse

fimalgoritmo
    