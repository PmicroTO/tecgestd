def tempojogo(hini, mini, hfin, mfin):
    totalini = (int(hini) * 60) + int(mini)
    totalfin = (int(hfin) * 60) + int(mfin)

    if totalfin > totalini:
        duracao = (totalfin - totalini)
        horas = duracao // 60
        minutos = duracao % 60
    else:
        duracao = ((1440 - totalini) + totalfin)
        horas = duracao // 60
        minutos = duracao % 60
    print("A duração do jogo foi de " + str(horas) + "horas " + "e " +
          str(minutos) + " minutos.")


A = input("HH iniciais: ")
B = input("MM iniciais: ")
C = input("HH finais: ")
D = input("MM finais: ")
tempojogo(A, B, C, D)
