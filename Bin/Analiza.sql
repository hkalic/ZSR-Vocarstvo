SELECT Partneri.Naziv Podnositelj, Zahtjevsjeme.Broj BrojZahtjeva, Biljnavrsta.Naziv BiljnaVrsta, Grupebilja.Naziv Grupabilja, Sorta.Naziv Sorta, Partneri_1.Naziv Proizv, Kategorije.Naziv Kategorija, Partneri_2.Naziv Doradjivac, Zahtjevsjeme.RokVazenja, Zahtjevsjeme.DatumPodnosenja, Zahtjevsjeme.ZemljaIzvoznica, Zahtjevsjeme.BrojDeklaZahtjev, Zahtjevsjeme.BrojDeklaracije, Zahtjevsjeme.Prepakiranje, Zahtjevsjeme.Domaca, Zahtjevsjeme.Produzenje, Zahtjevsjemedetail.BrojEvidencije, Zahtjevsjemedetail.GodinaProizv, Zahtjevsjemedetail.MasaPartije, Zahtjevsjemedetail.MasaJednog, Zahtjevsjemedetail.JedMj, Zahtjevsjemedetail.BrojPakiranja, Preparati.Naziv Preparat, Laboratoriji.Naziv Lab, Zahtjevsjemedetail.MasaJednog2
FROM "ZAHTJEVSJEME.DB" Zahtjevsjeme
   LEFT OUTER JOIN "ZahtjevSjemeDetail.DB" Zahtjevsjemedetail
   ON  (Zahtjevsjeme.Sifra = Zahtjevsjemedetail.SifraZahtjevSjeme)  
   LEFT OUTER JOIN "Partneri.DB" Partneri
   ON  (Zahtjevsjeme.Partner = Partneri.Sifra)  
   LEFT OUTER JOIN "BILJNAVRSTA.DB" Biljnavrsta
   ON  (Zahtjevsjeme.SifraBiljnaVrsta = Biljnavrsta.Sifra)  
   LEFT OUTER JOIN "Sorta.DB" Sorta
   ON  (Zahtjevsjeme.SifraSorte = Sorta.Sifra)  
   LEFT OUTER JOIN "Kategorije.DB" Kategorije
   ON  (Zahtjevsjeme.Sifrakategorije = Kategorije.Sifra)  
   LEFT OUTER JOIN "Partneri.DB" Partneri_1
   ON  (Zahtjevsjeme.Proizvodjac = Partneri_1.Sifra)  
   LEFT OUTER JOIN "Partneri.DB" Partneri_2
   ON  (Zahtjevsjeme.Doradjivac = Partneri_2.Sifra)  
   LEFT OUTER JOIN "Preparati.DB" Preparati
   ON  (Zahtjevsjemedetail.SifraPreparata = Preparati.Sifra)  
   LEFT OUTER JOIN "Laboratoriji.DB" Laboratoriji
   ON  (Zahtjevsjemedetail.SifraLab = Laboratoriji.Sifra)  
   LEFT OUTER JOIN "GrupeBilja.DB" Grupebilja
   ON  (Biljnavrsta.BiljnaGrupa = Grupebilja.Sifra)  
WHERE  Zahtjevsjeme.TIP = 1
