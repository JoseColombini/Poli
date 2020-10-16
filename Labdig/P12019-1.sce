Vl = 380
Vf = Vl/sqrt(3)

Zc1 = 36+%i*32.5
I = Vf/Zc1
S = 3*Vf*I'
modS = polar(S)

Fp = real(S)/modS

Qc = imag(S) -real(S)/0.92*sqrt(1-0.92^2)
S = S - Qc*%i
I = (S/(3*Vf))'
//W1 = Vf*I*expm((acosd(0.92) + 30)*%pi/180)
W1 = (Vl*expm(30*%pi/180*%i))*I'

W2 = (Vl*expm(-30*%pi/180*%i))*I'

Zcap = - abs(Vf)^2/(2*%pi*60*Qc/(3))*%i
Icc = Vl*expm(30*%pi/180*%i)/Zcap
