SELECT Zahtvocaridetail.Sifra, Uvjerenje.DatumPodnosenja, 
Partnerivoc.Naziv Podnositelj, Partnerivoc.Telefon, Partnerivoc.Ulica+', '+Partnerivoc.Mjesto adr, Partnerivoc.Upisnibroj, Partnerivoc.datumupisa,
Uvjerenje.Domaca, Rasadnicivoc.Naziv rasadnik, Zahtvocarimaster.Zapisnik1, Zahtvocarimaster.DatumZap1, Zahtvocarimaster.Zapisnik2, Zahtvocarimaster.DatumZap2, Biljnavrstavoc.Naziv Biljnavrsta, Sortavoc.Naziv Sorta, Vrsteklonova.Naziv Klonsorte, Vrstepodloga.Naziv Podloga, Vrsteklonova_1.Naziv Klonpodloge, Kategorijavoc.Naziv Kategorija, Nazivsadmatvoc.Naziv Nazivsadnogmat, Zahtvocaridetail.KolicinaPrijava, Zahtvocaridetail.JedMj JedMjPrijava, Zahtvocaridetail.KolicinaPreg1, Zahtvocaridetail.JedMjPerg1, Zahtvocaridetail.KolicinaPreg2, Zahtvocaridetail.JedMjPreg2, Zahtvocaridetail.KolicinaStabala, Zahtvocaridetail.KolicinaPupovaPreg1, Zahtvocaridetail.SortaKolVlastita, Zahtvocaridetail.SortaKolNabav, Zahtvocaridetail.SortaUvoz, Partnerivoc_1.Naziv SortaDobavljac, Zahtvocaridetail.SortaZemljaUvoza, Zahtvocaridetail.PodlogaKolVlastita, Zahtvocaridetail.PodlogaKolNabav, Zahtvocaridetail.PodlogaUvoz, Partnerivoc_2.Naziv PodlogaDobavljac, Zahtvocaridetail.PodlogazemljaUvoza, Zahtvocaridetail.SortaDokumentUvoza, Zahtvocaridetail.PodlogaDokumentUvoza, Zahtvocaridetail.KolUvjerenje, Zahtvocaridetail.JedMjKolUvjer, Zahtvocaridetail.NeideNaUvj, Zahtvocaridetail.Napomena, Zahtvocaridetail.BrojUvjerenja, Brojeviuvjerenja.Datum
FROM "ZahtVocariDetail.DB" Zahtvocaridetail
   INNER JOIN "ZahtVocariMaster.DB" Zahtvocarimaster
   ON  (Zahtvocaridetail.SifraZahtMast = Zahtvocarimaster.Sifra)  
   LEFT OUTER JOIN "BiljnaVrstaVOC.DB" Biljnavrstavoc
   ON  (Zahtvocaridetail.SifraBiljnaVrsta = Biljnavrstavoc.Sifra)  
   LEFT OUTER JOIN "SortaVOC.DB" Sortavoc
   ON  (Zahtvocaridetail.SifraSorta = Sortavoc.Sifra)  
   LEFT OUTER JOIN "VrsteKlonova.DB" Vrsteklonova
   ON  (Zahtvocaridetail.SifraKlonSorte = Vrsteklonova.Sifra)  
   LEFT OUTER JOIN "VrstePodloga.DB" Vrstepodloga
   ON  (Zahtvocaridetail.SifraPodloga = Vrstepodloga.Sifra)  
   LEFT OUTER JOIN "VrsteKlonova.DB" Vrsteklonova_1
   ON  (Zahtvocaridetail.SifraKlonPodloge = Vrsteklonova_1.Sifra)  
   LEFT OUTER JOIN "KategorijaVOC.DB" Kategorijavoc
   ON  (Zahtvocaridetail.SifraKategorija = Kategorijavoc.Sifra)  
   LEFT OUTER JOIN "NazivSadMatVOC.DB" Nazivsadmatvoc
   ON  (Zahtvocaridetail.SifraNazSadMat = Nazivsadmatvoc.Sifra)  
   LEFT OUTER JOIN "PartneriVOC.DB" Partnerivoc_1
   ON  (Zahtvocaridetail.SortaDobavljac = Partnerivoc_1.Sifra)  
   LEFT OUTER JOIN "PartneriVOC.DB" Partnerivoc_2
   ON  (Zahtvocaridetail.PodlogaDobavljac = Partnerivoc_2.Sifra)  
   LEFT OUTER JOIN "BrojeviUvjerenja.DB" Brojeviuvjerenja
   ON  (Zahtvocaridetail.BrojUvjerenja = Brojeviuvjerenja.PraviBrojUvjerenja)  
   INNER JOIN "Uvjerenje.DB" Uvjerenje
   ON  (Zahtvocarimaster.SifraUvjerenje = Uvjerenje.Sifra)  
   LEFT OUTER JOIN "RasadniciVOC.DB" Rasadnicivoc
   ON  (Zahtvocarimaster.SifraRasadnik = Rasadnicivoc.Sifra)  
   LEFT OUTER JOIN "PartneriVOC.DB" Partnerivoc
   ON  (Uvjerenje.SifraPodnositeljZaht = Partnerivoc.Sifra)  
