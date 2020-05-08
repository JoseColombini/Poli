alpha = [1, expm(%i*120*%pi/180), expm(%i*(-120)*%pi/180)]
Vg = 13.8e3
VgL = Vg/(sqrt(3)*expm(%i*30*%pi/180))*alpha
Comp12 = 15;
Comp23 = 8;
Z_eq = %i*1.15;
Z_p = 0.2779 + %i*0.3921;
I_max = 479;// # Corrente máxima que o condutor suporta
Y_eq1 = 1/Z_eq;
Ycond12 = 1/(Z_p*Comp12);
Ycond23 = 1/(Z_p*Comp23);
// -----------------------------------------
//2.1. Carga 1
//-----------------------------------------
Z_cg_1a = 83.91 +%i*33.01;
//Z_cg_1a = 0.01*Z_cg_1a/(0.01 + Z_cg_1a);
Z_cg_1b = 117.47 + %i*46.21;
Z_cg_1c = 73.42 + %i*28.89;
Y_cg_1a = 1/Z_cg_1a;
Y_cg_1b = 1/Z_cg_1b;
Y_cg_1c = 1/Z_cg_1c;

//-----------------------------------------
// 2.2. Carga 2
// -----------------------------------------
Z_cg_2ab = 617.56 + %i*231.35;
//Z_cg_2ab = Z_cg_2ab*0.01/(0.01 + Z_cg_2ab);
Z_cg_2bc = 540.36 + %i*202.43;
Z_cg_2ca = 385.97 + %i*144.59;
Z_cg_2tot = Z_cg_2ab + Z_cg_2bc + Z_cg_2ca;
Z_cg_2a = Z_cg_2ab*Z_cg_2ca/Z_cg_2tot;
Z_cg_2b = Z_cg_2ab*Z_cg_2bc/Z_cg_2tot;
Z_cg_2c = Z_cg_2ca*Z_cg_2bc/Z_cg_2tot;
Y_cg_2a = 1/Z_cg_2a;
Y_cg_2b = 1/Z_cg_2b;
Y_cg_2c = 1/Z_cg_2c;

// -----------------------------------------
// 2.3. Carga 3
// -----------------------------------------
Z_cg_3a = 165.26 + %i*60.83;
Z_cg_3a = 0.01*Z_cg_1a/(0.01 + Z_cg_1a);
Z_cg_3b = 198.32 + %i*73.00;
Z_cg_3c = 123.95 + %i*45.62;
Zn = 5.60 + %i*2.06;
Yn = 1/Zn;
Y_cg_3a = 1/Z_cg_3a;
Y_cg_3b = 1/Z_cg_3b;
Y_cg_3c = 1/Z_cg_3c;

            //A                //B //C    //A'   //B'  //C' 
Y = [Y_eq1 + Y_cg_1a + Ycond12, 0,  0, -Ycond12, 0,  0, 0, 0, 0, 0, 0;
      0, Y_eq1 + Y_cg_1b + Ycond12, 0, 0, -Ycond12, 0, 0, 0, 0, 0, 0;        
      0, 0, Y_eq1 + Y_cg_1c + Ycond12, 0, 0, -Ycond12, 0, 0, 0, 0, 0;
      Ycond12, 0, 0, -Ycond12 - Ycond23 - Y_cg_2a, 0, 0, Ycond23, 0, 0, 0, Y_cg_2a;
      0, Ycond12, 0, 0, -Ycond12 - Ycond23 - Y_cg_2b, 0,0,Ycond23,0,0,Y_cg_2b;
      0,0,Ycond12,0,0,-Ycond12 - Ycond23 - Y_cg_2c,0,0,Ycond23,0,Y_cg_2c;
      0,0,0,Ycond23, 0, 0, -Ycond23-Y_cg_3a,0,0,Y_cg_3a,0;
      0,0,0,0,Ycond23,0,0,-Ycond23-Y_cg_3b,0,Y_cg_3b,0;
      0,0,0,0,0,Ycond23,0,0,-Ycond23-Y_cg_3a,Y_cg_3c,0;
      0,0,0,0,0,0,Y_cg_3a,Y_cg_3b,Y_cg_3c,-Y_cg_3a-Y_cg_3b-Y_cg_3c-Yn,0;
      0,0,0,Y_cg_2a,Y_cg_2b,Y_cg_2c,0,0,0,0,-Y_cg_2a-Y_cg_2b-Y_cg_2c]


//Vv = [Va1;Vb1;Vc1;Va2;Vb2;Vc2;Va3;Vb3;Vc3;Vn3;Vn2];

E = [VgL(1)*Y_eq1; VgL(2)*Y_eq1; VgL(3)*Y_eq1;0;0;0;0;0;0;0;0];



Vv = inv(Y)*E; 

//Vv(4) = Vv(4)*sqrt(3)*expm(%i*30*%pi/180);
//Vv(5) = Vv(5)*sqrt(3)*expm(%i*30*%pi/180);
//Vv(6) = Vv(6)*sqrt(3)*expm(%i*30*%pi/180);

Z = [Z_cg_1a;Z_cg_1b;Z_cg_1c;Z_cg_2a;Z_cg_2b;Z_cg_2c;Z_cg_3a;Z_cg_3b;Z_cg_3c];
//Z = [Z_cg_1a;Z_cg_1b;Z_cg_1c;Z_cg_2a;Z_cg_2b;Z_cg_2c;0.01*Z_cg_3a/(0.01 + Z_cg_3a);Z_cg_3b;Z_cg_3c];


I = [Vv(1)/Z(1); Vv(2)/Z(2); Vv(3)/Z(3); Vv(4)/Z(4); Vv(5)/Z(5); Vv(6)/Z(6); Vv(7)/Z(7); Vv(8)/Z(8); Vv(9)/Z(9)];

As = [Vv(1)*conj(I(1));Vv(2)*conj(I(2));Vv(3)*conj(I(3));Vv(4)*conj(I(4));Vv(5)*conj(I(5));Vv(6)*conj(I(6));Vv(7)*conj(I(7));Vv(8)*conj(I(8));Vv(9)*conj(I(9))];
S = [As(1) + As(2) + As(3);As(4) + As(5) + As(6);As(7) + As(8) + As(9)];

P12 = (I(4) + I(7) + I(5) + I(8) + I(6) + I(9))/Ycond12;
P23 = (I(7)+I(8)+I(9))/Ycond23;

for i = 1:9
    vp(i) = sqrt(real(Vv(i))^2 + imag(Vv(i))^2);
    vpf(i) = atand(imag(Vv(i))/real(Vv(i)));
end

for i = 1:3
    sp(i) = sqrt(real(S(i))^2 + imag(S(i))^2);
    spf(i) = atand(imag(S(i))/real(S(i)));
end


    pp12 = sqrt(real(P12)^2 + imag(P12)^2);
    ppf12 = atand(imag(P12)/real(P12));
    
    pp23 = sqrt(real(P23)^2 + imag(P23)^2);
    ppf23 = atand(imag(P23)/real(P23));







