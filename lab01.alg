algoritmo "Lab01"

var
nome_do_aluno: caractere
nota1, nota2, nota3, nota4: real
meida: real


Inicio
escreva("Nome do aluno:")
leia(nome_do_aluno)
escreva("Qual foi a primeira nota?")
leia(nota1)
escreva("Qual foi a segunda nota?")
leia(nota2)
escreva("qual foi a terceira nota?")
leia(nota3)
escreva("Qual foi a quarta nota?")
leia(nota4)
media <- (nota1 + nota2 + nota3 + nota4) / 4

se media >= 5 entao
escreva ("O aluno está aprovado")

senao escreva ("o aluno está reprovado")
fimse



fimalgoritmo
