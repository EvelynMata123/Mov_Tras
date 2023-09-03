[t,x] = ode45(@ODE45T,[0,10],[0 0 0 0]);

figure(1)
plot(t,x(:,1));
grid on
title('m1');
xlabel("Tiempo");
ylabel("Metros");

figure(2)
plot(t,x(:,2));
grid on
title('m2');
xlabel("Tiempo");
ylabel("Metros");