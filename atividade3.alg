algoritmo "ImpostodeRenda"
var
nometrab: caractere
totalrecebido: real

inicio
escreva("Qual o nome do trabalhador? ")
leia(nometrab)

escreva("Qual o total recebido?")
leia(totalrecebido)

se totalrecebido <= 19000 entao
escreva("O trabalhador ", nometrab, " não paga imposto de renda")

senao 
escreva("O trabalhador ", nometrab, " deverá pagar imposto de renda")

fimse


fimalgoritmo
