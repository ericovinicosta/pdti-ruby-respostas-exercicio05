
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
  resposta = "P" if hora > 12 && hora <= 23

  resposta
end

def verifica_hora(hora)
  resposta = true
  if hora.to_i < 0 && hora.to_i > 23
    resposta = false
  end
  resposta
end

def verifica_minuto(minuto)
  resposta = true
  if minuto.to_i < 0 && minuto.to_i > 59
    resposta = false
  end
  resposta
end

def converte_hora (hora, minuto)
  if verifica_hora(hora) || verifica_minuto(minuto)
    hora_ampm = hora.to_i
    hora_ampm = (hora_ampm - 12) if hora_ampm > 12
    if hora_ampm < 10
      resposta = "0#{hora_ampm.to_s}"
    else
      resposta = "#{hora_ampm.to_s}"
    end
    if minuto < 10
      resposta += (":0#{minuto.to_s}")
    else
      resposta += ":#{minuto.to_s}"
    end
    resposta += " #{retorno_hora(hora_ampm, minuto)}"
    else
  resposta = "Hora inválida!!"
  end
  resposta
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
