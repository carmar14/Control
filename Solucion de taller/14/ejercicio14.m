a=[-0.01 0; 0 -0.02]
b=[1 1; -0.25 0.75]
c=[1 0;0 1]
pd=roots([1 0.205 0.01295])
rank(ctrb(a,b))
rank(obsv(a,c))
aa=[a zeros(2,2);-c zeros(2,2)]
ba=[b;zeros(2,2)]
k=place(a,b,pd')
pda=[pd' -1 -1.5]
kt=place(aa,ba,pda)
kp=kt(1:2,1:2)
ki=kt(1:2,3:4)
po=[-2 -2]
h=place(a',c',po)
h=h'

 