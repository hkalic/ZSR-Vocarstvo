update uvjerenje
set datumpodnosenja=null

update zahtvocarimaster
set zapisnik1=null, datumzap1=null, zapisnik2=null, datumzap2=null

delete from brojeviuvjerenja

update zahtvocaridetail
set kolicinaprijava=null, kolicinapreg1=null, kolicinapreg2=null, kolicinapupovapreg1=null, 
sortakolvlastita=0, sortakolnabav=0, podlogakolvlastita=0, podlogakolnabav=0, 
koluvjerenje=0, neidenauvj=False, neidenazap=False, brojuvjerenja=null, printano=false, printano2=false,
nekakvoca=null, neprirast=null

delete from zahtvocaridetail
where kolicinastabala=0

delete
from zahtvocarimaster z
where z.sifra not in (
select distinct d.sifrazahtmast
from zahtvocaridetail d)

delete
from uvjerenje z
where z.sifra not in (
select distinct d.sifrauvjerenje
from zahtvocarimaster d)
