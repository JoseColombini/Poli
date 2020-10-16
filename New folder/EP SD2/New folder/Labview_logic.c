
  float menor;

  if(MaxVal > 0.1) {
    float do = int(Sinal/132) - Sinal/132;
    float re = int(Sinal/148.5) - Sinal/148.5;
    float mi = int(Sinal/165) - Sinal/165;
    float fa = int(Sinal/175.956) - Sinal/175.956;
    float sol = int(Sinal/198) - Sinal/198;
    float la = int(Sinal/220.044) - Sinal/220.044;
    float si = int(Sinal/247.5) - Sinal/247.5;
    menor = min(do, re, mi, fa, sol, la, si);

    if (menor == do) {
      Saida = 1;
    }
    if (menor == re) {
      Saida = 2;
    }

    if (menor == mi) {
      Saida = 3;
    }

    if (menor == fa) {
      Saida = 4;
    }

    if (menor == sol) {
      Saida = 5;
    }

    if (menor == la) {
      Saida = 6;
    }

    if (menor == si) {
      Saida = 7;
    }

  }
