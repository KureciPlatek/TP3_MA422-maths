function [x] = steLogist(x0,mu,Nbr_Iterations)

% Renvoie la suite logistique avec pour valeurs d'entree
% steLogist(x0,mu,Nbr_Iterations)
% Veleur reboyée: vecteur x de taille Nbr_Iterations

x(1) = x0;

    for n = 1:1:Nbr_Iterations        % Suite logistique
        x(n+1) = mu*x(n)*(1-x(n));
    end

end