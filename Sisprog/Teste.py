import numpy as np
from numpy.core.defchararray import zfill

########
#VARIASVEIS GLOBAIS
###########

mem = np.chararray(4096, itemsize=10, unicode=True)
Saddr = 0xA
Eaddr = 0

#########
#BUROCRACIAS PARA TRATAMENTO DE DADOS
########

def bin2Hex(bin):
    return hex(int(bin, 2))[2:].upper().zfill(2)

def hex2Bin(hex):
    return bin(int(hex, 16))[2:].zfill(8)

##########
#LOADER
#######
def loader(file):
    global mem
    global Saddr
    global Eaddr
    f = open(file, 'r')
    Line = f.read()

    while Line != '' and Line != '\n':

        word = Line.split()
        if len(word[0]) == 3:
            Saddr = (int(word[0],16))
            Eaddr = Saddr
        
        else:
            for i in range(len(word)):
                #print( bin(int(word[i],16))+','+word[i])
                mem[Eaddr] = hex2Bin(word[i])
                #print(mem[addr])
                Eaddr = Eaddr +1
        Line = f.readline()
    
    f.close()

#############
#DUMPER
##########

def dumper(file):
    global mem
    global Saddr
    global Eaddr

    f = open(file, 'w')

    Waddr = Saddr
    f.write(str(hex(Waddr))[2:].upper() +"\n")
    count = 0
    while Waddr < Eaddr:
        f.write(bin2Hex(mem[Waddr]) + " ")
        count = count +1
        if count == 16:
            count = 0
            f.write("\n")
        Waddr = Waddr + 1

    f.write("\n")
    f.close()




loader("fita.txt")
print(mem[Saddr:Eaddr])
dumper("saida.txt")
mem[Saddr:Eaddr] = 'a'
print(mem[Saddr:Eaddr])
loader("saida.txt")
print(mem[Saddr:Eaddr])

    