a=[-0.313 56.7 0; -0.0139 -.426 0; 0 56.7 .0]
b=[0.232;.0203;0]
c=[0 0 1]
rank(ctrb(a,b))
rank(obsv(a,c))
e=0.826
wn=4/(e*10)
pd=roots([1 2*e*wn wn^2])
pd=[pd' -50]
k=place(a,b,pd)
aa=[a zeros(3,1);-c 0]
ba=[b;0]
pda=[pd -4]
kt=acker(aa,ba,pda)
kp=kt(1,1:3)
ki=kt(1,4)
po=[-4 -4 -4]
h=acker(a',c',po)
h=h' 