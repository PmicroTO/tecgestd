def quantos_divisores(n):
    div = 0
    for i in range(1, n + 1):
        if n % i == 0:
            div = div + 1
    return div


valor = input("O número para o qual deseja saber quantos divisores possui: ")
print(quantos_divisores(int(valor)))
