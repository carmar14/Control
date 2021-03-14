a=[-1 -3 -1; -2 -4 -1;2 -2 -3]
b=[3; 2 ;2]
c=[1 0 1]
eig(a) 
co=ctrb(a,b)
ob=obsv(a,c)
rank(co)
rank(ob)
[num,den]=ss2tf(a,b,c,0)
step(tf(num,den))
e=1.2
wn=4/(8*e)
pd=roots([1 2*e*wn wn^2])
k=place(a,b,[pd' -22])
po=[-1 -1 -1]
h=acker(a',c',po)
h=h' 
%inestable,observable,controlable