nome = input ("Digite seu nome: ")
print (f"Olá, {nome}! Seja bem-vindo(a) ao curso de Python!")

n1 = input ("Digite o primeiro número: ")
n2 = input ("Digite o segundo número: ")
soma = int(n1) + int(n2)
if n1.isnumeric() and n2.isnumeric():
    n1 = int(n1)
    n2 = int(n2)
    
    print (f"A soma de {n1} e {n2} é: {soma}")
else:
    print("Por favor, digite números válidos.")

if n1 + n2 % 2 == 0:
    print(f"O número {n1} é par.")
else:
    print(f"O número {n1} é ímpar.")

print ("Fim do programa.")