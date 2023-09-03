function dx = ODE45T(t,x)
%--------Parametros----%
m1 = 290;
b1 = 1000;
m2 = 59;
k1 = 16182;
f = 0;
k2 = 19000;
z = 0.05*sin(pi*20*t);
z1 = 0.05*sin(pi*0.5*t); %----Modificar en la definicion dinamica para graficar las otras-----% 
%-----------------------------%
dx = zeros(4,1);
%-----Matrices---%
M = [m1 0;
    0 m2];
B =[b1 -b1;
   -b1 b1];
K = [k1 -k1; -k1 (k1+k2)];

S = [1 0; -1 k2];
%------Definicion de la dinamica----%
dx(1) = x(3);
dx(2) = x(4);
dx(3:4) = M\(-B*[x(3); x(4)]-K*[x(1); x(2)] + S*[f; z]); 
%-------------%