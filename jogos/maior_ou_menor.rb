def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets

    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, " + nome
end

def sorteia_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200..."
    sorteado = 175
    puts "Escolhido...  que tal advinhar hoje nosso número secreto?"
    return sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "\n\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Chutes até agora: " + chutes.to_s
    puts "Entre com o número"
    chute = gets
    puts "Será que acertou? Você chutou " + chute
    return chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
   acertou = chute == numero_secreto

    if acertou
        puts "Acertou!"
        return true
    end

    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior"
    else
        puts "O número secreto é menor"
    end

    return false


end

da_boas_vindas

numero_secreto = sorteia_numero_secreto


limite_de_tentativas = 5
chutes = []
total_de_chutes = 0;

for tentativa in 1..limite_de_tentativas

    chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)

    chutes[total_de_chutes] = chute
    total_de_chutes = total_de_chutes + 1

    if verifica_se_acertou numero_secreto, chute
        break
    end

end
