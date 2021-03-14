syms s
num=expand(20*(s+12)*(s+4))
num=[20 320 960]
den=expand((s+25)*(s^2+2*s+25))
den=[1 27 75 625]
sis4=tf(num,den)
[a,b,c,d]=tf2ss(num,den)
eig(a)
co=ctrb(a,b);ob=obsv(a,c);rank(co)
rank(ob)
pd=roots(den)
pda=[pd' -10]
aa=[a zeros(3,1);-c 0]
ba=[b;0]
kt=place(aa,ba,pda)
kp=kt(1,1:3)
ki=kt(1,4)
po=[-1 -1 -1]
h=acker(a',c',po)
h=h'
 