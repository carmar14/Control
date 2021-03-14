a=[1 2;-3 -4]
b=[1;2]
c=[0 1]
eig(a)
pd=eig(a)
pda=[pd' -20]
aa=[a zeros(2,1); -c 0]
ba=[b;0]
kt=place(aa,ba,pda)
kp=kt(1,1:2)
ki=kt(1,3)
po=[-5 -5]
h=acker(a',c',po)
h=h'

