ano_nascimento = int(input("Digite o ano de nascimento: "))
ano_atual = 2026

idade = ano_atual - ano_nascimento

if idade >= 18:
    print (f"Você tem {idade} anos e é maior de idade.")
elif idade >= 18:
    print (f"Já que é maior de idade, pode me passar seu título de eleitor.")

else:
    print (f"Você tem {idade} anos e é menor de idade.")

print ("Fim do programa.")