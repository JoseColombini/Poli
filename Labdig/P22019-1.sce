clear
clc

vb = 380
sb = 4e4
zb = (vb*vb/sb)'


//potencia constante
s1 = 8e3 - 12e3*%i
s1b = s1/sb
z1 = (380*380/s1)'
z1b = z1/zb

s2 = 32e3 + %i*32e3/0.936*sqrt(1-0.936^2)
s2b = s2/sb

zl = 0.152346 + %i*0.309391
a = 1520/380
zlb = zl/zb

vcb = 1

for(i = 1:50),   
    vcb = 1 - (vcb/z1b + (s2b/vcb)' )*zlb
end

s1consumido = abs(vcb)^2/z1b'
