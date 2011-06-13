clc; clear all; close all;

%% Q9 TP3 Mathematiques

Epsilon = 1e-15
x0 = 0.2;
Nb_it = 100;


for mu = 3.6:0.01:3.99
    
    %Suite sans erreur
    x = steLogist(x0,mu,Nb_it);
    
    %Suite avec erreur
    mu_chaos = mu + Epsilon;
    x_chaos = steLogist(x0,mu_chaos,Nb_it);
    
    figure(1)
    plot(abs(x_chaos-x))
    hold all
    grid on
end