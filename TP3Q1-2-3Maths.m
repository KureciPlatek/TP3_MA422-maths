clc; clear all; close all;

%% Analyse d'un système discret, la suite logistique
%Q1: fonction steLogist.m realisee.

% Valeurs du systeme:
pas = 0.1;
N = 1/pas;

N = 50;

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


%% Q3 carte grossière des valeurs de mu.
% MU convergent
x3(1) = 0;
mu3 = 1.5;
X03 = 0.2;

x3 = steLogist(X03,mu3,N);

x31(1) = 0;
mu31 = 1.5;
X031 = 0.8;

x31 = steLogist(X031,mu31,N);

% MU divergent
x4(1) = 0;
mu4 = 3.5;
X04 = 0.2;

x4 = steLogist(X04,mu4,N);

x41(1) = 0;
mu41 = 3.5;
X041 = 0.8;

x41 = steLogist(X041,mu41,N);

figure(2)
plot(x3,'-g')
hold on
plot(x31,'-r')
hold on
plot(x41,'-b')
hold on
plot(x4,'-k')
grid on

legend('Mu convergent','Mu convergent','Mu divergent','Mu divergent')

% On observe donc que la suite converge pour mu<3, diverge pour mu>3 et que
% la valeur de x0 n'influe pas sur le comportement asymptotique.
