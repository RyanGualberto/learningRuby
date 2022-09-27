# condicional ternário


sexo = "M"

puts sexo == "M" ? 'Masculino' :  "Feminino"


# case
print "digite sua idade: "
idade = gets.chomp.to_i

# case no ruby = switch do js, when no ruby = case do js
case idade
# o operador .. significa entre
when 0..2
    puts "um neném"
when 3..12
    puts "uma criança"
when 13..18
    puts "um adolescente"
else
    puts "adulto"
end


#unless / a menos que
print "digite um numero: "
x = gets.chomp.to_i

unless x >= 2 
    puts 'x é menor que 2'
else 
    puts 'x é maior que 2'
end


#if
puts "digite um numero: "


x = gets.chomp.to_i

if x > 2
    puts "x é maior que 2"
end