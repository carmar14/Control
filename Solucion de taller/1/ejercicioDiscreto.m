[adis,bdis,cdis,ddis]=c2dm(a,b,c,0,0.1,'zoh')
pddis=[exp(pd(1,1)*0.1),exp(pd(1,2)*0.1)]
aadis=[adis zeros(2,1);-cdis 1]
badis=[bdis;0]
pdadis=[pddis 0.1]
ktdis=place(aadis,badis,pdadis)
kpdis=ktdis(1,1:2)
kidis=ktdis(1,3)
podis=[exp(po(1,1)*0.1),exp(po(1,2)*0.1)]
hdis=acker(adis',cdis',podis)
hdis=hdis'