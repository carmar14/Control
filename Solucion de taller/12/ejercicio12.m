num=[2 -6]
den=[1 -1 -6]
sis=tf(num,den)
[a,b,c,d]=tf2ss(num,den)
eig(a)
co=ctrb(a,b);rank(co)
ob=obsv(a,c);rank(ob)
pd=[-3 -2]
aa=[a zeros(2,1);-c 0]
ba=[b;0]
pda=[pd -20]
kt=place(aa,ba,pda)
kp=kt(1,1:2)
ki=kt(1,3)
% % po=[-10 -10]
% % % h=acker(a',c',po)
% % % h=h'

%controlable,no observables,inestables


%Diagonalizacion:
% para modal det(a-si)=0
% zpunto=Modalinversa*a*modal*z+modalinversa*b*u
% y=c*modal*z 
% para acker k=[0...0 1]*Coinversa*(ed(evaluadaen a))

%polos reales diferentes=sobreamortiaguda,epsilon>1
%%polos reales iguales=critico,epsilon=1
% %polos complejos conjugados=subamortiguado,epsilon<1
% funcion de transferencia=c(Si-a)-1b
% polos en lazo cerrado det(si-(a-bk)) regulador, det(si-(aa-ba*kt)) seguidor, 
% para calcular h det(si-(a'-c'*h)),observador

