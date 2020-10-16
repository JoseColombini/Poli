Vl = 220
Vf = Vl/(sqrt(3))*expm(-30*%pi/180*%i)

Snom = 820+%i*500
Zcd = -%i*400
Zcy = Zcd/3
Zl = 3.5 + (8 - 6)*%i
Zcarga = (3*abs(Vf)^2/(Snom))'

Zto = Zl + (Zcy*Zcarga/(Zcy + Zcarga))

I = Vf/Zto

Vcarga = Vf - I*Zl
Scarga = 3*abs(Vcarga^2)/(Zcarga)'


Vcarga = 220/sqrt(3)*expm(-30*%pi/180*%i)
Vcarga = Vf - Zl*(Vcarga/Zcy + (Snom/(3*Vcarga))')
