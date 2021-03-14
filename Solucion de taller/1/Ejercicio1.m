%seguidor

a=[0 -2;1 -3]
b=[0;1] 
c=[1,0]
p=eig(a)
co=ctrb(a,b)
rank(co) 
ob=obsv(a,c)
pd=[-1-1.02j, -1+1.02j]
k=place(a,b,pd)
%observador
rank(ob)
po=[-5 -5]
h=acker(a',c',po)
h=h'
%Controlable,observable,establecle

aa=[a,zeros(2,1);-c,0]
ba=[b;0]
coa=ctrb(aa,ba)
rank(coa)
pda=[pd,-10]
kt=place(aa,ba,pda)
kp=kt(1,1:2)
ki=kt(1,3)

% Discreto
[adis,bdis,cdis,ddis]=c2dm(a,b,c,0,0.1,'zoh')
pddis=[exp(pd(1,1)*0.1),exp(pd(1,2)*0.1)]
aadis=[adis zeros(2,1);-cdis 1]
badis=[bdis;0]
pdadis=[pddis 0.1]
ktdis=place(aadis,badis,pdadis)
kpdis=ktdis(1,1:2)
kidis=ktdis(1,3)
podis=[exp(po(1,1)*0.1),exp(po(1,2)*0.1)]
hdis=acker(adis',cdis',podis)
hdis=hdis'



