# string comum e todos possuem o mesmo identificador
puts "ryan".object_id
puts "ryan".object_id
puts "ryan".object_id
puts "ryan".object_id
puts "ryan".object_id
puts "ryan".object_id
puts "ryan".object_id
puts "ryan".object_id
puts "---------------"

# cada um possui um identificador diferente
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id
puts :ryan.object_id

# puts dentro do hash
h = {curso: "rails"}
puts h

# constantes, são criadas da mesma forma que variaveis, porém, com letra maiuscula
NOME = "Ryan"

puts NOME

puts "---------"
        
# permite alteração e faz um alert
NOME = "Rv"

puts NOME