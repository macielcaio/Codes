def boas_vindas
	puts "bem vindo ao jogo da adivinhação"
	puts "\n"
	puts "qual é seu nome "
	puts "\n"
	nome = gets
	puts "bem vindo " + nome
	return nome
end
 boas_vindas
 def sorteando
	puts "escolha um número de 0 á 200 "
	puts "\n"
	chute = gets
	puts "você escolheu o número " + chute
	return chute.to_i
end
sorteando
