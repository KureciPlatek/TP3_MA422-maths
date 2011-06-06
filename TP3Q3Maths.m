clc; clear all; close all;

%% Q3 TP3 maths

% Quiadrillage des parametres d'entree:

N = 50;
k = 0;
x(1) = 0;
x_temp = ones(1,N);

pas_X0 = 0.01;
pas_mu = 0.1

Nmax_X0 = 1/pas_X0;
Nmax_mu = 1/pas_mu;

x0 = ones(1,Nmax_X0);
mu = ones(1,Nmax_mu);

mu(1) = 0;
x0(1) = 0;

for i = 1:1:Nmax_mu
    mu(i+1) = mu(i)+pas_mu;
    k = k+1;
    for j = 1:1:Nmax_X0
        x0(j+1) = x0(j)+pas_X0;
        k = k+1;
        
        x_temp = steLogist(x0(j),mu(i),N);
        x(k) = x_temp(N);
    end
end


plot(x)
grid on