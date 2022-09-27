require_relative 'pagamento'

include Pagamento

puts "Digite a bandeira do cartão: "
b = gets.chomp

puts "Digite o número do cartão: "
n = gets.chomp

puts "Digite o Valor da compra: "
v = gets.chomp

puts pagar(b,n,v)
