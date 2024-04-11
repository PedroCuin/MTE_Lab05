clear
clc
close all

If1 = [0, 0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5];
Vl1 = [0, 33.8, 63, 89.4, 117.5, 142.2, 165.7, 187.3, 206, 223.2, 237];
Il1 = [0.01, 0.67, 1.31, 1.89, 2.52, 3.07, 3.59, 4.08, 4.50, 4.87, 5.17];
n1 = [1845, 1840, 1828, 1817, 1797, 1781, 1763, 1750, 1740, 1729, 1719];

P1 = sqrt(3) * Vl1 .* If1; % Calcula a potência

figure % Cria uma nova janela de gráfico
plot(P1, n1, 'r-') % Plota o gráfico da potência
xlabel('Potência (W)')
ylabel('n (rpm)')
title('Gráfico de n (rpm) X Potência (W)')
grid()

figure % Cria outra nova janela de gráfico
T1 = (P1 ./ n1) / 2 .* 3.1415 .* 60; % Calcula o torque
plot(T1, n1, 'b-') % Plota o gráfico do torque
xlabel('T (Nm)')
ylabel('n (rpm)')
title('Gráfico de n (rpm) X Conjugado (Nm)')
grid()



If2 = [0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55, 0.6];
Vl2 = [44.5, 83.8, 102.5, 121.6, 134.0, 143.9, 150.9, 155.5, 160.1, 162.8, 166, 167.7];
Il2 = [0.90, 1.54, 2.15, 2.54, 2.79, 2.99, 3.12, 3.21, 3.3, 3.36, 3.4, 3.45];
n2 = [2867, 2492, 1962, 1617, 1429, 1286, 1207, 1158, 1122, 1098, 1073, 1054];

P2 = sqrt(3) * Vl2 .* If2; % Calcula a potência

figure % Cria uma nova janela de gráfico
plot(P2, n2, 'r-') % Plota o gráfico da potência
xlabel('Potência (W)')
ylabel('n (rpm)')
title('Gráfico de n (rpm) X Potência (W)')
grid()

figure % Cria outra nova janela de gráfico
T2 = (P2 ./ n2) / 2 .* pi .* 60; % Calcula o torque
plot(T2, n2, 'b-') % Plota o gráfico do torque
xlabel('T (Nm)')
ylabel('n (rpm)')
title('Gráfico de n (rpm) X Conjugado (Nm)')
grid()
