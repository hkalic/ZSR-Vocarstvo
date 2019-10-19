program Voc;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Splash in 'Splash.pas' {SplashForm},
  MsgUnit in 'MsgUnit.pas' {Msgform},
  BazeModul in 'BazeModul.pas' {Podaci: TDataModule},
  UnosTemplate in 'UnosTemplate.pas' {FUnosTemplate},
  PostavkeDlg in 'PostavkeDlg.pas' {FPostavkeDlg},
  Pricekaj in 'Pricekaj.pas' {FPricekaj},
  PozivSifDlg in 'PozivSifDlg.pas' {FPozivSifDlg},
  RekDlg in 'RekDlg.pas' {FRekDlg},
  UnosPartneri in 'UnosPartneri.pas' {FUnosPartneri},
  UnosBiljneVrste in 'UnosBiljneVrste.pas' {FUnosBiljneVrste},
  UnosSorte in 'UnosSorte.pas' {FUnosSorte},
  UnosKategorije in 'UnosKategorije.pas' {FUnosKategorije},
  UnosVrstePodloga in 'UnosVrstePodloga.pas' {FUnosVrstePodloga},
  UnosVresteKlonova in 'UnosVresteKlonova.pas' {FUnosVresteKlonova},
  UnosGrupeBilja in 'UnosGrupeBilja.pas' {FUnosGrupeBilja},
  UnosRasadnici in 'UnosRasadnici.pas' {FUnosRasadnici},
  UnosNazSadMat in 'UnosNazSadMat.pas' {FUnosNazSadMat},
  ZahtjevVocarstvo in 'ZahtjevVocarstvo.pas' {FZahtjevVocarstvo},
  PrijaveGRID in 'PrijaveGRID.pas' {FPrijaveGRID},
  OdabirPrikazaDlg in 'OdabirPrikazaDlg.pas' {FOdabirPrikazaDlg},
  NacinObradeDlg in 'NacinObradeDlg.pas' {FNacinObradeDlg},
  SviBrojeviDlg in 'SviBrojeviDlg.pas' {FSviBrojeviDlg},
  ZapisnikDlg in 'ZapisnikDlg.pas' {KojiZapDlg};

//{$R *.RES}
//ZipMsgYU.res

{$R ZipMsgYU.RES}
begin

  if ParamStr(2) <> chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73) then begin
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  End;

  Application.Initialize;
  Application.Title := 'Voæarska aplikacija';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TPodaci, Podaci);
  Application.CreateForm(TKojiZapDlg, KojiZapDlg);
  if ParamStr(2) <> chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73) then begin
    SplashForm.Hide;
    SplashForm.Free;
  End;

  Application.Run;


End.
