[a,b,c,d]=linmod('diagrama')
co=ctrb(a,b);rank(co)
ob=obsv(a,c);rank(ob)
eig(a)
e=0.707
wn=4/(4*e)
pd=roots([1 2*e*wn wn^2])
pd=pd'
% pd=[-50 -50]'
k=place(a,b,pd)
po=[-5 -5]
h=acker(a',c',po)
h=h'
pda=[pd -10]
aa=[a zeros(2,1);-c 0]
ba=[b;0]
kt=place(aa,ba,pda)
kp=kt(1,1:2)
ki=kt(1,3)


%discreto regulador
[adis,bdis,cdis,ddis]=c2dm(a,b,c,0,0.1,'zoh')
pddis=[exp(pd(1,1)*0.1),exp(pd(1,2)*0.1)]
% aadis=[adis zeros(2,1);-cdis 1]
% badis=[bdis;0]
% pdadis=[pddis 0.1]
kdis=place(adis,bdis,pddis)
% kpdis=ktdis(1,1:2)
% kidis=ktdis(1,3)
podis=[exp(po(1,1)*0.1),exp(po(1,2)*0.1)]
hdis=acker(adis',cdis',podis)
hdis=hdis'
