=begin
Jogo de Craps. Faça um programa de implemente um jogo de Craps.
O jogador lança um par de dados, obtendo um valor entre 2 e 12.
Se, na primeira jogada, você tirar 7 ou 11, você um "natural" e ganhou.
Se você tirar 2, 3 ou 12 na primeira jogada, isto é chamado de "craps" e você perdeu.
Se, na primeira jogada, você fez um 4, 5, 6, 8, 9 ou 10,este é seu "Ponto".
Seu objetivo agora é continuar jogando os dados até tirar este número novamente.
Você perde, no entanto, se tirar um 7 antes de tirar este Ponto novamente.
=end

def jogar_dados
  numero_aleatorio = Random.new
  numero_aleatorio.rand(5)+1
end

dado1 = jogar_dados
dado2 = jogar_dados
rodadas = 0


puts "Jogando CRAPS"
begin
  puts "Dado 1: #{dado1}, Dado 2: #{dado2}"
  jogada = dado1+dado2
  puts "Valor: #{jogada}"
  rodadas += 1
  if rodadas == 1 && (jogada == 7 || jogada == 11)
    puts 'Você GANHOU!!'
    break
  end
  if rodadas == 1 && (jogada == 2 || jogada == 3 || jogada ==12)
    puts 'CRAP - Você PERDEU!!'
    break
  end
  if rodadas > 1 && jogada == 7
    puts 'Você PERDEU!!'
    break
  end
  if rodadas == 1
    primeira_jogada = jogada
  end
  if rodadas > 1 && jogada == primeira_jogada
    puts 'Vocẽ VENCEU!!!'
    break
  end
  dado1 = jogar_dados
  dado2 = jogar_dados

end while true
