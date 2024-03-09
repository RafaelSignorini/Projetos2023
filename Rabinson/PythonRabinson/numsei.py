#1)

genero = "M" or "F"
pesoM = 0
alturaM = 0
pesoF = 0
alturaF = 0
genero = (input(f"Digite o seu sexo: "))
if genero == "M":
    alturaM = float(input("Digite sua altura: "))
    pesoM = alturaM * 72.7 - 58
    print(f"Seu peso médio deve ser: {pesoM}")
elif genero == "F":
    alturaF = float(input("Digite sua altura: "))
    pesoF = alturaF * 62.1 - 44.7
    print(f"Seu peso médio deve ser: {pesoF}")

#2)
