clc; clear all; close all;

%% Q10 TP3 maths Diagramme de divergence

% Quiadrillage des parametres d'entree:

N = 150;
k = 0;
x(1,1) = 0;
x_temp = ones(1,N);

pas_X0 = 0.01;
pas_mu = 0.001;

x0(1) = 0;
mu(1) = 0;

%Creation des vecteurs comportant les différents mu et x0
i = 0;
for var = 0:pas_X0:1
    i = i+1;
    x0(i) = var;
end

i = 0;
for var = 0:pas_mu:4
    i = i+1;
    mu(i) = var;
end


%Creation du diagramme de bifurcations
Nmax_X0 = length(x0);
Nmax_mu = length(mu);

i = 0;
for i = 1:1:Nmax_mu
    % Variations de mu
    for j = 1:1:Nmax_X0
        %variations des x0
        x_temp = steLogist(x0(j),mu(i),N);
        x(i,j) = x_temp(N);     % On ne prend que la valeur finale de la suite.
    end
end

plot(x,'.')
grid on
title('Diagramme de bifurcation')
xlabel('mu')
ylabel('x0')



