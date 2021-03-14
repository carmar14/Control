num=[1 3]
den=[1 3 2] 
sis7=tf(num,den)
y=[1 0]
[a,b,c,d]=tf2ss(num,den)
co=ctrb(a,b)
ob=obsv(a,c)
rank(co)
rank(ob)
eig(a)
pd=[-5 -6] 
% pda=[pd -50]
% aa=[a zeros(2,1);-c 0]
% ba=[b;0]
k=place(a,b,pd)
% kp=kt(1,1:2)
% ki=kt(1,3)
po=[-10 -10]
h=acker(a',c',po)
h=h'

 