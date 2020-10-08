=begin
Faça um programa com uma função chamada somaImposto.
A função possui dois parâmetros formais: taxaImposto, que é a quantia de imposto sobre vendas
expressa em porcentagem e custo, que é o custo de um item antes do imposto. A função “altera” o
valor de custo para incluir o imposto sobre vendas.
=end
def soma_imposto(taxa_imposto, custo)
  resposta = custo+(custo.to_f * taxa_imposto.to_f/100)
end

print "informe o valor do imposto: "
taxa_imposto = gets.to_f
print "Informe o custo: "
custo = gets.to_f

puts soma_imposto taxa_imposto, custo