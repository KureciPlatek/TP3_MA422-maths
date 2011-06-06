clc; clear all; close all;

%% Q4 Resultat theorique sur la convergence de la suite.

% faire varier les mu et observer les val de convergence.

 % valeur de x0 indifférente.
N = 30;



pas_mu = 0.2;
mu(1) = 0;

i = 0;
for var = 0:pas_mu:3
    i = i+1;
    mu(i) = var;
end
Nmax_mu = length(mu); % =41


for k = 1:1:Nmax_mu
    mu(k)
    if mu(k) <= 1
        x_tmp(1) = 0.2;
    else
        x_tmp(1) = 0.8;
    end
    
    for n = 1:1:N        % Suite logistique
        x_tmp(n+1) = mu(k)*x_tmp(n)*(1-x_tmp(n));
    end
    
    if mu(k) <= 1
        hold on
        plot(x_tmp,'-r')
    elseif mu(k) == 3
        hold on
    else
        hold on
        plot(x_tmp,'-b')
    end
    
    
end

grid on
title('Convergence de la suite')