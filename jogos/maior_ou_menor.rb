puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"
nome = gets

puts "Começaremos o jogo para você, " + nome

puts "Escolhendo um número secreto entre 0 e 200..."
numero_secreto = 175
puts "Escolhido...  que tal advinhar hoje nosso número secreto?"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou " + chute
    
    acertou = chute.to_i == numero_secreto
    
    if acertou
        puts "Acertou!"
    else
        maior = numero_secreto > chute.to_i
        if maior
            puts "O número secreto é maior"
        else
            puts "O número secreto é menor"
        end
        
    end
    
end
