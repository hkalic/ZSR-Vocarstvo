unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, DB, DBTables, ComCtrls, ToolWin, Grids, DBGrids,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Tabnotbk,
  ImgList, lmdctrl, RXDBCtrl, RxDBComb, RXLookup, RXShell, RXCtrls,
  lmdeditb, lmdeditc, LMDEdit, lmdclass, lmdnwgui, lmdextcS, lmdstdcS,
  lmdnonvS, ZipMstr, FileUtil, Wwintl, lmdcompo, lmdcctrl,
  LMDGlobalHotKey, LMDCustomComponent, LMDOneInstance, Wwdatsrc;

type
  TMainForm = class(TForm)
    LMDOneInstance1: TLMDOneInstance;
    ZipMaster1: TZipMaster;
    MainMenu1: TMainMenu;
    Datoteka1: TMenuItem;
    Reindexbazapodataka1: TMenuItem;
    Kontrolabazapodataka1: TMenuItem;
    N3: TMenuItem;
    Arhiviranjepodataka1: TMenuItem;
    SvkodnevnoHDD1: TMenuItem;
    Periodinodisketa1: TMenuItem;
    N2: TMenuItem;
    Izlazizprograma1: TMenuItem;
    Zahtjevi1: TMenuItem;
    ifarnici1: TMenuItem;
    Partneri1: TMenuItem;
    Biljnevrste1: TMenuItem;
    Sorte1: TMenuItem;
    Kategorije1: TMenuItem;
    Programskeosnovne1: TMenuItem;
    Window1: TMenuItem;
    Cascade1: TMenuItem;
    Tile1: TMenuItem;
    TileVertical1: TMenuItem;
    Arangeicons1: TMenuItem;
    MinimizeAll1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton6: TToolButton;
    ToolButton10: TToolButton;
    LMDGlobalHotKey1: TLMDGlobalHotKey;
    Pregledobrada1: TMenuItem;
    VrsteKlonova1: TMenuItem;
    Vrstepodloga1: TMenuItem;
    Grupebilja1: TMenuItem;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ProvjeristrukturebazasaDBS1: TMenuItem;
    N4: TMenuItem;
    Pregledpartnera1: TMenuItem;
    Pregledbiljnihvrsta1: TMenuItem;
    Analizapokoliinama2: TMenuItem;
    Evidencijapodataka2: TMenuItem;
    Rasadnici1: TMenuItem;
    Sadnimaterijal1: TMenuItem;
    Slanjepodataka1: TMenuItem;
    Analiza21: TMenuItem;
    DBiljne: TwwDataSource;
    Query3: TQuery;
    DPartneri: TwwDataSource;
    Query2: TQuery;
    Query9: TQuery;
    DEvidencija: TwwDataSource;
    Query6: TQuery;
    DAnaliza: TwwDataSource;
    procedure UpdateMenuItems(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MENIClick(Sender: TObject);

    procedure ZipMaster1Message(Sender: TObject; ErrCode: Integer;Message: String);
    procedure ZipMaster1Progress(Sender: TObject; ProgrType: ProgressType;Filename: String; FileSize: Integer);
    procedure Tile1Click(Sender: TObject);
    procedure TileVertical1Click(Sender: TObject);
    procedure Arangeicons1Click(Sender: TObject);
    procedure MinimizeAll1Click(Sender: TObject);
    procedure Cascade1Click(Sender: TObject);
    procedure LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    caa : Boolean;
    ukbaza:integer;
    procedure testdatoteka;
    Function  PorukaIzlaz:Boolean;
    procedure KontrolaBaza;
    procedure KopijaBaza(koja:Integer;Pitaj:Boolean);
    Function  Otvorena(naziv:string):Boolean;

    procedure JedMjObrada;

  public
    { Public declarations }
     TotalSize1, TotalProgress1, TotalSize2, TotalProgress2: Int64;
  end;

var
  MainForm: TMainForm;

implementation
uses BazeModul, AppUtils,  UnosTemplate, Servisi, MakeDBStatus,
     PostavkeDlg, MsgUnit, PozivSifDlg, Pricekaj, UnosBiljneVrste, UnosPartneri,
     UnosSorte, UnosKategorije, UnosVresteKlonova, UnosVrstePodloga,
     UnosGrupeBilja, UnosRasadnici, UnosNazSadMat,
     ZahtjevVocarstvo, PrijaveGRID, NacinObradeDlg;

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  CurrencyString:='';  NegCurrFormat:=2;
  ThousandSeparator:='.';  DecimalSeparator:=',';
  CurrencyDecimals:=2;  DateSeparator:='.';
  ShortDateFormat:='dd.mm.yyyy';  TimeSeparator:=':';

  Screen.OnActiveFormChange := UpdateMenuItems;

end;

procedure TMainForm.UpdateMenuItems(Sender: TObject);
begin
  Cascade1.Enabled := MDIChildCount > 0;
  Tile1.Enabled := MDIChildCount > 0;
  TileVertical1.Enabled := MDIChildCount > 0;
  Arangeicons1.Enabled := MDIChildCount > 0;
  MinimizeAll1.Enabled := MDIChildCount > 0;

  Reindexbazapodataka1.enabled := not drugi;
  Kontrolabazapodataka1.enabled := not drugi;
  Arhiviranjepodataka1.enabled := not drugi;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveFormChange := nil;
end;

procedure TMainForm.testdatoteka;
Var i : integer;
begin
if MessageDlg('VAŽNA NAPOMENA !!!'+#13+
              'Kod ove opcije svi korisnici na mreži (ako ih ima) trebaju izaèi iz programa DOK.'+#13+#13+
       'Da li želite nastaviti ?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
begin
 Try
  For i := 0 to MdiChildCount-1 do MdiChildren[i].Close;
  Application.CreateForm(TFMakeDBStatus,FMakeDBStatus);
  FMakeDBStatus.ShowModal;
 Finally
  Screen.Cursor := crDefault;
 end;
End;
end;

Function TMainForm.PorukaIzlaz:Boolean;
Var i : integer;
begin
  Result := False;
  if MessageDlg('VAŽNA NAPOMENA !!!'+#13+
                'Kod ove opcije svi korisnici na mreži (ako ih ima) trebaju izaèi iz programa DOK.'+#13+#13+
                'Izvršavanjem ove opcije izaæi æe te iz programa, a ako želite nastaviti raditi'+#13+
                'potrebno je da ponovo pokrenete program DOK.'+#13+#13+
       'Da li želite nastaviti ?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then begin
    For i := 0 to MdiChildCount-1 do MdiChildren[i].Close;
    Result := True;
  End;
End;

procedure TMainForm.KontrolaBaza;
begin
  if PorukaIzlaz then begin
    FileExecute(ExtractFilePath(Application.ExeName)+'Pdxrbld.exe',
    Format(' -R1 "/A%s" "/P%s"',[Podaci.Database1.Aliasname,chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73)]), '', esNormal);
    Application.Terminate;
  End;
end;




procedure TMainForm.MENIClick(Sender: TObject);
Var tagg:Integer;
    a:String;
begin

 UnosStyle:=FsMDIChild;
 tagg:=0;
 if Sender.ClassName = 'TMenuItem' then Tagg := (Sender as TMenuItem).Tag
 Else if Sender.ClassName = 'TToolButton' then Tagg := (Sender as TToolButton).Tag;
  Case Tagg of

        10: FZahtjevVocarstvo := TFZahtjevVocarstvo(FindShowForm(TFZahtjevVocarstvo,''));

        52: FUnosBiljneVrste:= TFUnosBiljneVrste(FindShowForm(TFUnosBiljneVrste,''));
        54: FUnosKategorije:= TFUnosKategorije(FindShowForm(TFUnosKategorije,''));
        50: FUnosPartneri:= TFUnosPartneri(FindShowForm(TFUnosPartneri,''));
        53: FUnosSorte:= TFUnosSorte(FindShowForm(TFUnosSorte,''));
        57: FUnosVresteKlonova:= TFUnosVresteKlonova(FindShowForm(TFUnosVresteKlonova,''));   //Vrste klonova
        58: FUnosVrstePodloga:= TFUnosVrstePodloga(FindShowForm(TFUnosVrstePodloga,''));   //Vrste podloga
        60: FUnosGrupeBilja:= TFUnosGrupeBilja(FindShowForm(TFUnosGrupeBilja,''));   //grupe bilja
        55: FUnosRasadnici:= TFUnosRasadnici(FindShowForm(TFUnosRasadnici,''));   //rasadnici
        56: FUnosNazSadMat:= TFUnosNazSadMat(FindShowForm(TFUnosNazSadMat,''));   //naziv sadno matrijala

       100: testdatoteka;
       101: KontrolaBaza;
       102: Close;
       131: KopijaBaza(131,True);
       132: KopijaBaza(132,True);
       144: Podaci.ProvDB(true);
       110: ShowDialog(TFPostavkeDlg);

       178: begin
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled('Evidencija podataka',18);
            End;
                
       179: begin
              Application.CreateForm(TFNacinObradeDlg,FNacinObradeDlg);
              FNacinObradeDlg.ShowModal;

              vObradaJM := FNacinObradeDlg.RadioGroup1.ItemIndex;
              JedMjObrada;

              vObradaSjeme2 := FNacinObradeDlg.RadioGroup1.ItemIndex;
              vpoljeObrade  := FNacinObradeDlg.RadioGroup2.ItemIndex;

              FNacinObradeDlg.Free;
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled('Analiza po kolièinama',15);
            End;

       180: begin
              Application.CreateForm(TFNacinObradeDlg,FNacinObradeDlg);
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);

              FPrijaveGRID.StartPregled('Analiza po kolièinama',16);
            End;

       185: begin
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled((Sender as TMenuItem).Caption,10);
            End;
       186: begin
              Application.CreateForm(TFPrijaveGRID,FPrijaveGRID);
              FPrijaveGRID.StartPregled((Sender as TMenuItem).Caption,11);
            End;
  End;
end;

procedure TMainForm.JedMjObrada;
begin
  case vObradaJM of
            0: Jmo := 'kg';
            1: Jmo := 'zrna';
            2: Jmo := 'kom';
            3: Jmo := 'g';
  End;
end;


procedure TMainForm.ZipMaster1Message(Sender: TObject; ErrCode: Integer; Message: String);
begin
   MsgForm.RichEdit1.Lines.Append( Message );
   PostMessage( MsgForm.RichEdit1.Handle, EM_SCROLLCARET, 0, 0 );
   Application.ProcessMessages;
   if ErrCode > 0 then ShowMessage( 'Poruka o grešci: ' + Message );
end;

procedure TMainForm.ZipMaster1Progress(Sender: TObject; ProgrType: ProgressType; Filename: String; FileSize: Integer);
var
   Step: Integer;
begin
   case ProgrType of
      TotalFiles2Process: ZipMaster1Message( self, 0, 'Ukupno datoteka za arhiviranje = ' + IntToStr( FileSize ) );
      EndOfBatch: ZipMaster1Message( self, 0, '***Kraj posla***' );
   end;
end;

procedure TMainForm.KopijaBaza(koja:Integer;Pitaj:Boolean);
begin
End;

procedure TMainForm.Tile1Click(Sender: TObject);
begin
  TileMode := tbHorizontal; Tile;
end;
procedure TMainForm.TileVertical1Click(Sender: TObject);
begin
  TileMode := tbVertical; Tile;
end;

procedure TMainForm.Arangeicons1Click(Sender: TObject);
begin
  ArrangeIcons;
end;

procedure TMainForm.MinimizeAll1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := MDIChildCount - 1 downto 0 do MDIChildren[I].WindowState := wsMinimized;
end;

Function TMainForm.Otvorena(naziv:string):Boolean;
Var i:integer;
begin
  Result := true;
  For i := 0 to MdiChildCount-1 do
    if MdiChildren[i].name = naziv then exit;
  Result := False;
End;

procedure TMainForm.Cascade1Click(Sender: TObject);
begin
  Cascade;
end;

procedure TMainForm.LMDGlobalHotKey1KeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  ShowDialog(TFPozivSifDlg);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
    FZahtjevVocarstvo := TFZahtjevVocarstvo(FindShowForm(TFZahtjevVocarstvo,''));
    FZahtjevVocarstvo.dxDBGrid1.SetFocus;
end;

End.
