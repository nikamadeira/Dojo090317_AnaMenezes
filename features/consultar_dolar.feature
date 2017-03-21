#language: pt
#utf-8

Funcionalidade: Consultar dolar
	Eu como usuário
	Quero consultar o valor do dolar no site da UOL
	para validar se está acima de 3,20

Cenario: buscar valor do dolar 
Dado Buscar o site da UOL através do google
Quando Acessar a página da UOL
E Buscar a página de economia
Então Consultar o valor do dolar





#esse ta com erro