=begin
Faça um programa, com uma função que necessite de um argumento.
A função retorna o valor de caractere ‘P’, se seu argumento for positivo, e ‘N’,
se seu argumento for zero ou negativo.
=end

def verfica_numero(numero)
  resposta = 'N'
  resposta = 'P' if numero > 0
  resposta
end

print 'Informe um número para verificar: '
puts verfica_numero gets.to_f