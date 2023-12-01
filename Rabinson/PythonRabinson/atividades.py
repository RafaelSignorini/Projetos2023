def Bhaskara():
    print('Digite os valores: ')
    a = float(input())
    b = float(input())
    c = float(input())

    delta = (b**2)-4*a*c

    if delta < 0:
        print('Delta negativo.')
        print('0')
    else:
        x1 = (-b + delta**0.5)/(2*a)
        x2 = (-b - delta**0.5)/(2*a)

        print(f'x1: {x1}')
        print(f'x2: {x2}')

def Boletim():

    media = 0
    nota = 0
    for I in range (0,3):
        nota = float(input("Digite a nota: "))
        media = media + nota
    media = media / 3
    if media == 0:
        print(f"Sua média é: {media}, você foi de americanas, de comes e bebes, de mindinho do lula, de campanha bolconaro, de ricardo eletro, de perestroika, de olavo de carvalho, de glasnost, de rims do luiz e de luan na escada com sucesso")
    elif media < 6.99 and media > 0:
        print(f"Sua média é: {media}, você foi reprovado")
    elif media >= 7 and media <10:
        print(f"Sua média é: {media}, você foi aprovado")
    else:
        print(f"Sua média é: {media}, você foi aprovado com sucesso")

def Login():
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


