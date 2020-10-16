Vb1 = 12e3
Vb2 = sqrt(3)*132.7906e3
Vb3 = sqrt(3)*7.9674e3

Sb = 100e6

zl = 100*(0.03+0.12*%i)*(abs(Vb2)^2/Sb)

zt12 = 0.03*%i*100e6/30e6
zt345 = 0.04*%i*100e6/30e6

zt12eq = zt12/2
zt345eq = zt345/3

scpu = (30e6/0.92)/Sb

zeq = zt12eq + zl + zt345eq

vc = 1
i = 0
for(i = 1:50),
    i = (scpu/(sqrt(3)*vc))'
    vc = 1-zeq*i
end

vzt345 = vc + zt345eq*i

Plinha = zl*(i^2)*Sb

