a=[0 1 0 0; 20.601 0 0 0; 0 0 0 1; -0.4905 0 0 0]
b=[0; -1 ; 0;0.5]
c=[0 0 1 0]
pd=[-1+sqrt(3)*i -1-sqrt(3)*i -5 -5]
pda=[pd -10]
aa=[a zeros(4,1); -c 0]
k=acker(a,b,pd)
ba=[b;0]
kt=acker(aa,ba,pda)
kp=kt(1,1:4)
ki=kt(1,5)
po=[-5 -5 -5 -5]
h=acker(a',c',po)
h=h'

%discreto
[adis,bdis,cdis,ddis]=c2dm(a,b,c,0,0.1,'zoh')
pddis=[exp(pd(1,1)*0.1),exp(pd(1,2)*0.1),exp(pd(1,3)*0.1),exp(pd(1,4)*0.1)]
aadis=[adis zeros(4,1);-cdis 1]
badis=[bdis;0]
pdadis=[pddis exp(-10*0.1)]
kdis=acker(adis,bdis,pddis)
ktdis=acker(aadis,badis,pdadis)
kpdis=ktdis(1,1:4)
kidis=ktdis(1,5)
podis=[exp(po(1,1)*0.1),exp(po(1,2)*0.1),exp(po(1,3)*0.1),exp(po(1,4)*0.1)]
hdis=acker(adis',cdis',podis)
hdis=hdis'

%representacion clasica continua seguidor
[numu,denu]=ss2tf(a-h*c,b,kp,0)
[numy,deny]=ss2tf(a-h*c,h,kp,0)
gu=tf(numu,denu)
gy=tf(numy,deny)

%representacion clasica discreta seguidor
[numudis,denudis]=ss2tf(adis-hdis*cdis,bdis,kpdis,0)
[numydis,denydis]=ss2tf(adis-hdis*cdis,hdis,kpdis,0)
gudis=tf(numudis,denudis,0.1)
gydis=tf(numydis,denydis,0.1)
% [n,d]=c2dm(numu,denu,0.1,'zoh')
% g=tf(n,d,0.1) por si las moscas

% MAAAAAAAAAAAAAAAAAAAAAAALOOOOOOOOOOOO DE AHIIIIIIIIIII PA BAJOOOOOOOOO


% %representacion clasica continua regulador
% [numur,denur]=ss2tf(a-h*c,b,k,0)
% [numyr,denyr]=ss2tf(a-h*c,h,k,0)
% gur=tf(numur,denur)
% gyr=tf(numyr,denyr)

%representacion clasica discreta regulador
% [numudisr,denudisr]=ss2tf(adis-hdis*cdis,bdis,kdis,0)
% [numydisr,denydisr]=ss2tf(adis-hdis*cdis,hdis,kdis,0)
% gudisr=tf(numudisr,denudisr)
% gydisr=tf(numydisr,denydisr)

% dlinmod--pasar diagrama de bloques discreto
  



 