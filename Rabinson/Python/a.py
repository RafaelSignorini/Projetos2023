usuario = input("Insira seu usuário: ")
senha = input(f"Olá, {usuario}, digite sua senha: ")

if usuario == "cinivius" and senha == "123456789":
  print(f"Bem-vindo, {usuario}.")
else:
  print("Usuário ou senha inválidos, tente novamente.")

nota1 = float(input("Insira a nota da sua primeira prova aqui: "))
if (nota1 >= 0 and nota1 <= 10):
  pass
else:
  print('notpass')
  quit()
nota2 = float(input("Insira a nota da sua segunda prova aqui: "))
nota3 = float(input("Insira a nota da sua terceira prova aqui: "))
media = ((nota1 + nota2 + nota3)/3)
if (nota1 + nota2 + nota3) /3 >= 7:
  print(f"Sua média foi {media}, você foi aprovado.")
else:
  print(f"Sua média foi {media}, você foi reprovado.")