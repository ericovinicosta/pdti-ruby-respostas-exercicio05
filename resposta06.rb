
=begin
Faça um programa que converta da notação de 24 horas para a notação de 12 horas.
Por exemplo, o programa deve converter 14:25 em 2:25 P.M.
A entrada é dada em dois inteiros. Deve haver pelo menos duas funções: uma para fazer a conversão e uma para a saída.
Registre a informação A.M./P.M. como um valor ‘A’ para A.M. e ‘P’ para P.M. Assim,
a função para efetuar as conversões terá um parâmetro formal para registrar se é A.M. ou P.M.
Inclua um loop que permita que o usuário repita esse cálculo para novos valores de entrada todas as vezes que desejar.
=end
def retorno_hora(hora, minuto)
  resposta = "A"
  resposta = "P" if hora.to_i > 12 && hora.to_i <= 23
  resposta
end

def converte_hora (hora, minuto)
  hora_ampm = hora.to_i
  hora_ampm = hora.to_i - 12 if hora.to_i > 12 && hora.to_i <= 23
  resposta = "#{hora_ampm}:#{minuto} #{retorno_hora(hora, minuto)}"
end

begin
  print 'Entre com a hora: '
  hora = gets.to_i
  if hora < 24
    print 'Entre com os minutos: '
    minuto = gets.to_i

    puts converte_hora hora, minuto
  end
end while hora < 24
