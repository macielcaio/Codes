def da_boas_vindas
  puts "bem vindo ao jogo da adivinhação"
  puts "\n"
  puts "qual é o seu nome"
  nome = gets
  puts "\n"
  puts "começaremos o jogo para você, #{nome}"
  puts "\n"
  return nome
end
def pede_dificuldade
  puts "escolha um nível de dificuldade, 1 - fácil, 2 - médio e 3 - difícil"
  dificuldade = gets.to_i
end
def sorteando_numero_secreto(dificuldade)
  case dificuldade
  when 1
    maximo = 50
  when 2
    maximo = 163
  when 3
    maximo = 256
  end
  puts "escolhendo um número entre 1 e #{maximo}..."
  sorteando = rand(maximo) + 1
  puts "que tal adivinhar o número secreto?"
  return sorteando
end
def chutando_numero(chutes, tentativa, limite_de_tentativas)
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "\n"
  puts "escolha o número"
  chute = gets.strip
  puts "será que você escolheu o número certo? você chutou #{chute}"
  puts "Número de chutes " + chutes.to_s
  return chute.to_i
end
  def verificando_chute(chute, acertou, numero_secreto)
    if acertou
      puts "Acertou!"
      return true
    else
      if
        numero_secreto > chute
        puts "o número é maior"
        return false
      else
        numero_secreto < chute
        puts "o núemro é menor"
        return false
      end
    end
  end
  def joga(nome, dificuldade)
      numero_secreto = sorteando_numero_secreto dificuldade
      puts "\n"
      pontos_ganhos = 1000
      limite_de_tentativas = 5
      chutes = []
        for tentativa in 1..limite_de_tentativas
          puts "\n\n"
          chute = chutando_numero chutes, tentativa, limite_de_tentativas
          chutes << chute
          pontos_a_perder = (chute - numero_secreto).abs / 2.0
          pontos_ganhos -= pontos_a_perder
          puts "\n"
          #inserindo comentário no código
          acertou = numero_secreto == chute
          if verificando_chute chute, acertou, numero_secreto
            break
          end
        end
      puts "\n"
      puts "Você ganhou #{pontos_ganhos} pontos."
  end
def quer_jogar?
  puts "Deseja jogar novamente? (S/N)"
  quer_jogar = gets.strip
  quer_jogar.upcase == "S"
end
  nome = da_boas_vindas
  dificuldade = pede_dificuldade
loop do
  joga nome, dificuldade
  if !quer_jogar?
    break
  end
end
