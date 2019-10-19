SELECT Biljnavrsta.Naziv NazivBiljneVrste, Biljnavrsta.Latinski, Sorta.Sifra, Sorta.Naziv NazivSorte,  Grupebilja.Naziv GrupaBilja
FROM "BiljnaVrstaVOC.DB" Biljnavrsta
   LEFT OUTER JOIN "GrupeBiljaVOC.DB" Grupebilja
   ON  (Biljnavrsta.BiljnaGrupa = Grupebilja.Sifra)  
   LEFT OUTER JOIN "SortaVOC.DB" Sorta
   ON  (Biljnavrsta.Sifra = Sorta.SifraBiljnaVrsta)  
ORDER BY Sorta.Sifra
