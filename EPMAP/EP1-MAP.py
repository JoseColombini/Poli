import math
import numpy as np
import os
import matplotlib as matplot
import time
import datetime
import os
import sys

T = 1 #Ex 1
X = 1

#funcao qeu insere calor
def f (x,t):
    #f = 10*x*x*(x - 1) - 60*x*t + 20*t

    return f

def main():
    #Input of number of divisions
    N = int(input("Insert the number of x fraction (N): "))
    M = int(input("Insert the number of t fraction (M): "))
    #Size of fractions

    Dx = X/N
    Dt = T/M
    lamb = Dt/(Dx*Dx)
    print("Dx = ", N)
    print("Dt = ", M)
    print("lambda = ", lamb)

    #Creat the matix uik that describ all bar in datetime
    #Each line is a bar in one moment
    #So each colum is a position in the bar
    #uik_array(2, 5) is the point 5 of the bar at the moment 2
    uik_array = np.zeros((M, N))

    #metodo 11
    i = 1 #iterator for space
    k = 0 #iterator for time

    #para condincao inicial



    #laco para calcular os elementos depois de dada as condicoes inciais
    for k in range(1, M):
        for i in range(1, N - 1):
            uik_array[k + 1][i] = uik_array[k][i] + Dt((uik_array[k][i - 1] - 2*uik_array[k][i] + uik_array[k][i + 1])/(Dx*Dx) + f(Dx*i, Dt*k))

    #Calculo do erro
    






























if __name__ == '__main__':
    main()
