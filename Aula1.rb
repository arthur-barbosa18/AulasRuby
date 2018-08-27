require "time"
#Tipos de dados

#integer
a = 5
puts a
puts a.class

#toda tipo de dados em ruby é uma classe, por isso não é necessário instanciar a variavel informando o seu tipo
#automaticamente, uma classe pai verifica que tipo de dado ela é
#Integer é um tipo de classe pai, que tem como herdeiras Fixnum e Bignum por exemplo

#exemplo de bignum
a = 888888888888888888888888888888888888888888888
puts a, a.class

#float
f = 3.659
puts(f, f.class)
#note que puts aceita a sintaxe com ou sem parenteses, depende do padrão do projeto

#Boleano
verdadeiro = true
falso = false
puts verdadeiro, falso

#string
a = "string legal"
b = "string"
c = "s"
puts a, b, c
#ou...
a = 'string legal'
b = 's'
puts a,b
puts "Quantidade de caracteres da string a = #{a.length}"
a << " so que não"
# o metodo << adiciona ao final da string essa outra string, na verdade é uma concatenação de string que também pode ser feita com o sinal de Soma +
a = a + " somando agora essa string à a"
puts a
#tanto faz se usar aspas duplas ou simples
#e não importa se for um caractere ou uma cadeia de caracteres, ele entende tudo como string
puts a.class


#é possível fazer o parse da variavel para qualquer outro, desde que o ruby entenda, por exemplo:
a = 5
puts a.class
a = a.to_s #fazendo  o parse para string (convertendo para string um inteiro)
puts a
puts a.class

#e existem outros tipos de conversão como to_i, to_json, to_f...

############################## OPERACOES #################

#soma
a = 5
b = 3
puts "a = #{a} e b = #{b}"
puts "a+b = #{a+b}"
puts "a-b = #{a-b}"
puts "a*b = #{a*b}"
puts "a/b = #{a/b}"
puts "a elevado a b = #{a**b}"
puts "resto da divisao de a por b = #{a%b}" 

################# condicionais #############################

time = Time.parse("Aug 26 2018 08:00")
#Time.now
puts time

if Time.now == time
	puts "time é exatamente igual a hora atual"
else
	puts "time é diferente da hora atual"
	puts "pois time = #{time} e hora atual = #{Time.now}"
end


unless Time.now == time
	puts "time é diferente da hora atual"
	puts "pois time = #{time} e hora atual = #{Time.now}"
else
	puts "time é exatamente igual a hora atual"
end

#lendo do teclado
puts "Informe sua idade"
  idade = gets.to_i

if idade < 16
	puts "você não pode votar!"
elsif idade >= 16 and idade < 18
	puts "você tem o direito de votar, mas não é obrigado!"
elsif idade >= 18 and idade < 70
	puts "você é obrigado a votar"
else 
	puts "você tem mais de 70 anos e não é obrigado a votar mais!"
end

######## Loops ##############

#while

i = 0
#executa enquanto for verdadeira
puts "=========== WHILE ==========="
while i < 10 do
	puts i
	i += 1
end

puts "=========== UNTIL ==========="
#until
#executa até a condição retornar true
#executa enquanto ela for falsa
i=0
until i > 10 do
	puts i
	i +=1
end

#for 
puts "================= FOR ================="
for i in 0..10 do
	puts i
end

#times

puts "============= TIMES ==============="
10.times do |i|
	puts i
end

##### ARRAY E LOOP ##########
professores_da_ufmg = ["Leo Torres", "Carmela", "Bruno Otávio", "Armando Alves Neto", "Ricardo Duarte"]
for professor in professores_da_ufmg do
	puts professor
end

#HASH

materias_da_ufmg = {Controle: 70, InformáticaIndustrial: 80, ASDL: 90, Robotica: 95, SPP: 100}

for materia in materias_da_ufmg do
	puts materia
end

#outra forma de ler hash

puts materias_da_ufmg[:Controle]

#nada mais é que um par de chave valor
#verificando o tipo
puts materias_da_ufmg.class
