clc; clear all; close all;

%% Analyse d'un système discret, la suite logistique

% Valeurs du systeme:
pas = 0.1;
N = 1/pas;

N = 100;

%% Q2 Valeurs de mu et x0 fixes
%1) mu = 0.4, x0 = 0.7
x = ones(1,N);
mu = 0.4;
X0 = 0.7;

x = steLogist(X0,mu,N);
x(N)

%2) mu = 1.3 et x0 = 0.3
x2 = ones(1,N);
mu2 = 1.3;
X02 = 0.3;

x2 = steLogist(X02,mu2,N);
x2(N)

% Tracage des courbes:
plot(x,'-r')
hold on
plot(x2,'-k')
grid on
legend('Mu = 0.4 X0 = 0.7','Mu = 1.3 X0 = 0.3')
title('Population des bacteries')

% La population se stabilise donc pour ces valeurs d'entree. Le modele
% permet donc de prevoir ce comportement.


