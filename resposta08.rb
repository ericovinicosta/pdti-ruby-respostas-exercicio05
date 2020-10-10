=begin
Faça uma função que informe a quantidade de dígitos de um determinado número inteiro informado.
=end
def quantidade_digitos (numero)

  valor_numero = numero.to_s
  valor_numero.length
end

print "Entre com um numero inteiro: "
numeros = gets.to_i
puts "A quantidade de digitos é: #{quantidade_digitos numeros}"