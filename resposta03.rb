=begin
Faça um programa, com uma função que necessite de três argumentos,
e que forneça a soma desses três argumentos.
=end

def soma (numero1, numero2, numero3)
  resultado =  numero1 + numero2 + numero3
end

puts "Entre com três numeros"
print "Primeiro: "
numero1 = gets.to_i
print "Segundo: "
numero2 = gets.to_i
print "Terceiro: "
numero3 = gets.to_i

puts "A soma é #{soma numero1, numero2, numero3}"