nome = input("Digite seu nome: ")
print(f"Olá, {nome}! Seja bem-vindo(a) ao curso de Python!")

n1 = input("Digite o primeiro número: ")
n2 = input("Digite o segundo número: ")

if n1.isnumeric() and n2.isnumeric():
    n1 = int(n1)
    n2 = int(n2)
    soma = n1 + n2

    print(f"A soma de {n1} e {n2} é: {soma}")

    if soma % 2 == 0:
        print(f"O resultado da soma ({soma}) é par.")
    else:
        print(f"O resultado da soma ({soma}) é ímpar.")
else:
    print("Por favor, digite números válidos.")

print("Fim do programa.")