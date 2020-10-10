=begin
Reverso do número. Faça uma função que retorne o reverso de um número inteiro informado. Por exemplo: 127 -> 721.
=end
def inverte_digitos (numero)

  valor_numero = numero.to_s
  valor_numero.reverse
end

print "Entre com um numero inteiro: "
numeros = gets.to_i
puts "A quantidade de digitos é: #{inverte_digitos numeros}"