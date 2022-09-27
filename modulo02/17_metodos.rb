class Pessoa 
    def falar 
        puts "Olá"
    end

    def self.gritar(texto)
        "#{texto}!!!"
    end
end

p1 = Pessoa.new
puts p1.falar

puts Pessoa.gritar("Hello")