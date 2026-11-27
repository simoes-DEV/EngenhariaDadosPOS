usuario = "admin"
senha = "123456"

usuarioDigitado = input("Digite o usuário: ")
senhaDigitada = input("Digite a senha: ")

if usuarioDigitado == usuario and senhaDigitada == senha:
    print("Acesso permitido. Bem-vindo(a)!")
elif usuarioDigitado != usuario and senhaDigitada == senha:
    print("Usuário incorreto. Acesso negado.")
elif usuarioDigitado == usuario and senhaDigitada != senha:
    print("Senha incorreta. Acesso negado.")

else:
    print("Usuário e senha incorretos. Acesso negado.")
