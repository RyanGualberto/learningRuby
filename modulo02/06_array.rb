v = [1,3,5,7,9]
v1 = [12,13,15,17,19]
v2 = [19,45,78,79,91]

vPai = [v, v1, v2 ]


vPai.each do |externo| 
    externo.each do |interno|
        puts interno
    end
end


# v.push(15)
# v.push('heloo')

# v.each do |item|
#     puts item
# end

# puts v[6]