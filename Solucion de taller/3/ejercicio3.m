a=[0 1 0 0; 3 0 0 2;0 0 0 1; 0 -2 -3 0]
b=[0;1;0;0]
c=[1 0 0 0]
eig(a)
co=ctrb(a,b)
rank(co)
ob=obsv(a,c)
rank(ob)
[num,den]=ss2tf(a,b,c,[0])
sis=tf(num,den)
% step(sis)
% prueba de polos del sistema
pole(sis)
pd=[ -2 -2 -2 -2]
pda=[pd -20]
aa=[a, zeros(4,1); -c,0]
ba=[b; 0]
kt=acker(aa,ba,pda)
kp=kt(1,1:4)
ki=kt(1,5)
po=[-2 -2 -2 -2]
h=acker(a',c',po)
h=h'

%controlable,observable,inestable
