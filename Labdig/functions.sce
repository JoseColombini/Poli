function f = fasor(x, i)
    f = x*(cosd(i) + %i*sind(i))
endfunction

function [a, b] = polard(x)
    [a, c] = polar(x)
    b = c*180/%pi
endfunction

function f = parallel(a, b)
    f = a*b/(a+b)
endfunction

function [z0, z1] = zscc(scc1, scc3, vl)
    z1 = vl^2/(scc3)'
    z0 = 3*vl^2/(scc1)' - 2*z1
endfunction
