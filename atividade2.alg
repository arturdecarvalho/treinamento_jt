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
   se vendasjan > vendasfev e vendasjan > vendasmar entao
   escreva("O mês de janeiro foi o que mais vendeu")

   fimse

   se vendasfev > vendasjan e vendasfev > vendasmar entao
   escreva(" mês de fevereiro foi o que mais vendeu")

   fimse
   se vendasmar > vendasjan e vendasmar > vendasfev entao
escreva("O mês de março foi o que mais vendeu")

fimse

fimalgoritmo