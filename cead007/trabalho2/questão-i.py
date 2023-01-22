def grafico(_a, _b, _c):
    a = int(_a)
    b = int(_b)
    c = int(_c)
    dlt = (b**2) - (4 * a * c)  # delta
    x1 = ((b * -1) + (dlt**0.5)) / (2 * a)
    x2 = ((b * -1) - (dlt**0.5)) / (2 * a)
    abcissas = (x1 + x2) / 2
    vertice = (a * (abcissas**2)) + (b * abcissas) + c
    print("As raízes da equação " + str(a) + "x^2+" + str(b) + "x+" + str(c) +
          " são " + "\nx1: " + str(x1) + "\nx2: " + str(x2) + "\nvertices: " +
          "(" + str(abcissas) + ", " + str(vertice) + ")")

    def retangulos(precisao):
        meiaparabola = (abs(x1) + abs(x2)) / 2
        deltax = meiaparabola / precisao
        count = 0
        x = deltax / 2
        soma = (4 - (x**2)) * deltax
        while count < precisao:
            areaformula = (4 - (x**2)) * deltax
            soma += areaformula
            x += deltax
            count += 1
        print("A área entre as raízes da equação é: " + str(soma**2))

    # segui o modelo do material http://wwwp.fc.unesp.br/~mauri/Down/area.pdf
    # meu raciocinio foi pegar o ultimo exemplo e apenas duplicar o resultado p/ o outro lado da curva
    # quanto maior a precisao, menor vai ser o delta x
    retangulos(int(D))


A = input("Digite o valor de a :")
B = input("Digite o valor de b :")
C = input("Digite o valor de c :")
D = input("Digite a precisão desejada para o cálculo da área: ")
grafico(A, B, C)
