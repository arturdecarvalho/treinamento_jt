algoritmo "ResultadoDeVendas"

var
vendasjan, vendasfev, vendasmar: real
soma: real

inicio
escreva("valor de vendas em janeiro:")
leia(vendasjan)

escreva("valor de vendas em fevereiro:")
leia(vendasfev)

escreva("valor de vendas em março:")
leia(vendasmar)

soma <- vendasjan + vendasfev + vendasmar
escreva("Soma das vendas: ", soma)

se soma > 17000 entao
escreva("O valor da meta foi atingido")
senao escreva("O valor atingido foi de: ", soma)




fimse





fimalgoritmo