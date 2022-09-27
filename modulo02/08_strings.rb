x = "Ryan"
y = 'Gualberto'

puts x
puts x.class
puts y
puts y.class

a = 'curso'
b = "rails"

puts a << b #modifica o a, implementando o conteúdo de b dentro do a
puts a + b #modifica o objeto, crianco uma nova variavel com a concatenação

# "template string" só funciona com variaveis de string com aspas duplas
puts "olá, seja bem vindo ao curso de #{b}"