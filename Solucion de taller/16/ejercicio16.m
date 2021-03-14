a1=[0 1; -5 -6];b1=[1 0; 0 2];c1=[-2 0; -1 3];
a2=[-1 1 0;0 -1 0; 0 0 -2];b2=[4 2;0 0; 0 0];c2=[1 0 1; 2 3 0];
a3=[0 1 0;0 0 0; -6 -11 -6];b3=[0;1;0];c3=[4 5 1];
rank(ctrb(a1,b1))
rank(obsv(a1,c1))
rank(ctrb(a2,b2))
rank(obsv(a2,c2))
rank(ctrb(a3,b3))
rank(obsv(a3,c3))