clc; clear all; close all;

%% TP3 mathematiques Mise en evidence d'un comportement chaotique

%% Q7 Mise en évidence d'un comportement chaotique

mu(1) = 3;
x0 = 0.2;
N = 1000;
Nit = 100;
pas_mu = 0.001
X_fin(1) = 0;


for i = 1:N
    mu(i+1) = mu(i) + pas_mu;
    mu_tmp = mu(i);
    x = steLogist(x0,mu_tmp,Nit);
    X_fin(i) = x(Nit);
end

plot(X_fin)
grid on
title('Sensibilite aux conditions initiales')
legend('Valeur finale de x(n) pour 100 iterations')
xlabel('Valeurs de mu')
ylabel('Valeur finale')
% axis([3 4 0 1])


%% Q8 Tests avec les biologistes

%Suite 1:
mu1 = 3.6;
x01 = 0.4;
Nb_it1 = 10;

x1 = steLogist(x01,mu1,Nb_it1);

%Test du comportement chaotique
mu1_chaos = 3.60001;
x1_chaos = steLogist(x01,mu1_chaos,Nb_it1);


% Suite 2:
mu2 = 3.7;
x02 = x01;
Nb_it2 = 100;

x2 = steLogist(x02,mu2,Nb_it2);

%Test du comportement chaotique
mu2_chaos = 3.70001;
x2_chaos = steLogist(x01,mu2_chaos,Nb_it2);

% Exploitation graphique
figure(2)
plot(abs(x1_chaos-x1),'-g')
hold on
plot(x1)
hold on
plot(x1_chaos,'-r')
grid on
title('mu = 3.6')
legend('Différence','Sans erreur','avec erreur')

figure(3)
plot(abs(x2_chaos-x2),'-g')
hold on
plot(x2)
hold on
plot(x2_chaos,'-r')
grid on
title('mu = 3.7')
legend('Différence','Sans erreur','avec erreur')

% Deuxieme courbe: observation d'un comportement chaotique, le système est
% extremement sensible aux conditions initiales
