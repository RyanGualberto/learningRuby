class Pessoa
    attr_accessor :nome, :email
end

class PessoaFisica <  Pessoa
    attr_accessor :cpf 
    def
        falar(texto)
        texto
    end
end

class PessoaJuridica < Pessoa 
    attr_accessor :cnpj
    def pagar_fornecedor
        puts "Pagando Fornecedor..."
    end
end


#instancia da classe
p1 = Pessoa.new 

#setter
p1.nome = "Ryan"
p1.email = "Rv@gmail.com"

#getter
puts p1.nome
puts p1.email
puts '------------------------'

#instancia da classe
pf = PessoaFisica.new

#setter
pf.nome = "Ryannn"
pf.email = "Rv@gmaill.com"
pf.cpf = "55833548706"

#getter
puts pf.nome 
puts pf.email 
puts pf.cpf 

pf.falar("hi guys")

puts '------------------------'


#instancia da classe
pj = PessoaJuridica.new

pj.nome = "Ryannn"
pj.email = "Rv@gmaill.com"
pj.cnpj = "55833548706"

#getter
puts pj.nome 
puts pj.email 
puts pj.cnpj