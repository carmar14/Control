a=[0 -1;-1 0]
b=[0;1]
c=[1,0]
p=eig(a)
co=ctrb(a,b)
rank(co)
ob=obsv(a,c)
rank(ob)
[num,den]=ss2tf(a,b,c,0)
sys=tf(num,den)
wn=4/5
e=1
pd=roots([1 e*wn*2 wn^2])
aa=[a,zeros(2,1);-c,0]
ba=[b;0]
pda=[pd' -8]
kt=place(aa,ba,pda)
ki=kt(1,3)
kp=kt(1,1:2)
po=[-2 -2]
h=acker(a',c',po)
h=h'

%Inestable, observable,controlable
% Discreto
[adis,bdis,cdis,ddis]=c2dm(a,b,c,0,0.1,'zoh')
pddis=[exp(pda(1,1)*0.1),exp(pda(1,2)*0.1),exp(pda(1,3)*0.1)]
aadis=[adis zeros(2,1);-cdis 1]
badis=[bdis;0]
% pdadis=[pddis 0.1]
ktdis=place(aadis,badis,pddis)
kpdis=ktdis(1,1:2)
kidis=ktdis(1,3)
podis=[exp(po(1,1)*0.1),exp(po(1,2)*0.1)]
hdis=acker(adis',cdis',podis)
hdis=hdis' 
