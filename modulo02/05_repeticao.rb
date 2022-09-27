#each
# percorre todos os indices do array executando a função, item é o parametro que cada indice passa para a função 
(0..5).each do |item| 
    puts 'o valor lido foi: '  + item.to_s
end

#while
i = 0 
num = 5

# while = enquanto e do = faça, ou seja enquanto a variavel i for menor que a variavel num faça a função a seguir
while i < num do 
    puts 'Contando' + i.to_s
    i+= 1
end