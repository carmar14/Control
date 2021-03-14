a=[-1 0;1 -2]
b=[1 0;0 1]
c=[-1 1]
eig(a)
co=ctrb(a,b);rank(co)
ob=obsv(a,c);rank(ob)
e=1
wn=4/4*e
pd=[-1 -1]
po=[-2 -2]
k=place(a,b,pd)
% h=acker(a,c,po)
% h=h' no se puede hacer
