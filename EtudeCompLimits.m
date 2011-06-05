clc; clear all; close all;

%% Analyse d'un système discret, la suite logistique

% Valeurs du systeme:
pas = 0.1;
N = 1/pas;

Nbr_Iterations = 100

X0 = [1,pas,N]
mu = ones(1,4*N)
x = ones(1,4*N*N*100);

X0(1) = 0;
mu(1) = 0;

    

%% 1 etude des comportements limites

for i = 1:pas:4*N     %Variations de mu
    mu(i+1) = mu(i)+pas;
    for j = 1:pas:N   %Variations de X0
        X0(j+1) = X0(j)+pas;
        
        x(1) = mu(i)*X0(j)*(1-X0(j));
        
        for n = 1:1:Nbr_Iterations        % Suite logistique
            x(n+1) = mu(i)*x(n)*(1-x(n));
            
        end
        
    end
    
end


plot(x)
grid on