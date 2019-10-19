SELECT b.naziv vrsta, s.naziv sorta, 
v2.naziv ksorte, 
p.naziv podloga, 
v1.naziv kpodloge, 
k.naziv kategorija, 
z.kolicinastabala, z.koluvjerenje, z.jedmjkoluvjer, z.neidenaZap,
z.sifra
FROM zahtvocaridetail z
   INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifra)  
   INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)
   LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sifra)
   LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.sifra)
   LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)
   LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sifra)
WHERE  z.sifraZahtMast = :Sifra
AND z.printano=False
AND z.neidenazap=False

