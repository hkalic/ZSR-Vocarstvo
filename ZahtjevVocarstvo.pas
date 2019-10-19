unit ZahtjevVocarstvo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel,
  Grids, Wwdbigrd, Wwdbgrid, wwdblook, Db, Wwdatsrc, DBTables, Wwtable,
  wwDialog, wwrcdvw, Placemnt, FR_Desgn, FR_DSet, FR_DBSet, FR_Class,
  ToolWin, Mask, wwdbedit, Wwdotdot, Wwdbcomb, Menus, FR_PTabl,
  Buttons, RxLookup, RXCtrls, RXDBCtrl, Wwquery, dxDBTLCl, dxGrClms,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, DBGrids, Provider, DBClient, MemTable,
  RxQuery;

type
  TFZahtjevVocarstvo = class(TForm)
    TZahtMaster: TwwTable;
    DzahtMaster: TwwDataSource;
    TZahtDetail: TwwTable;
    DZahtDetail: TwwDataSource;
    wwRecordViewDialog3: TwwRecordViewDialog;
    wwTable2: TwwTable;
    wwRecordViewDialog1: TwwRecordViewDialog;
    wwTable1: TwwTable;
    wwTable7: TwwTable;
    FormStorage1: TFormStorage;
    ZahtjevDetail: TfrDBDataSet;
    ZahtjevMaster: TfrDBDataSet;
    wwTable3: TwwTable;
    wwDataTable1: TwwDataSource;
    wwTable4: TwwTable;
    wwTable5: TwwTable;
    frPrintTable1: TfrPrintTable;
    wwTable6: TwwTable;
    TZahtMasterSifra: TAutoIncField;
    wwTable8: TwwTable;
    wwTable9: TwwTable;

    TZahtDetailSifra: TAutoIncField;
    TZahtDetailSifraZahtMast: TIntegerField;
    TZahtDetailSifraBiljnaVrsta: TIntegerField;
    TZahtDetailSifraSorta: TIntegerField;
    TZahtDetailSifraKlonSorte: TIntegerField;
    TZahtDetailSifraPodloga: TIntegerField;
    TZahtDetailSifraKlonPodloge: TIntegerField;
    TZahtDetailSifraKategorija: TIntegerField;
    TZahtDetailJedMj: TStringField;
    TZahtDetailKolicinaStabala: TIntegerField;
    TZahtDetailLookBiljnaVrsta: TStringField;
    TZahtDetailLookSorta: TStringField;
    TZahtDetailLookKlonSorte: TStringField;
    TZahtDetailLookPodloga: TStringField;
    TZahtDetailLookKlonPodloge: TStringField;
    TZahtDetailLookKategorija: TStringField;


    PopupMenu2: TPopupMenu;
    Ispisotpremnicenaekran1: TMenuItem;
    Ureivanjeotpremnice1: TMenuItem;
    TZahtMasterZapisnik1: TStringField;
    TZahtMasterDatumZap1: TDateField;
    TZahtMasterZapisnik2: TStringField;
    TZahtMasterDatumZap2: TDateField;
    TZahtDetailSortaUvoz: TBooleanField;
    TZahtDetailSortaDobavljac: TIntegerField;
    TZahtDetailSortaZemljaUvoza: TStringField;
    TZahtDetailPodlogaUvoz: TBooleanField;
    TZahtDetailPodlogaDobavljac: TIntegerField;
    TZahtDetailPodlogazemljaUvoza: TStringField;
    TZahtDetailLookSortaDobav: TStringField;
    TZahtDetailLookPodlogaDobav: TStringField;
    wwTable10: TwwTable;
    wwTable11: TwwTable;
    TZahtDetailSortaDokumentUvoza: TStringField;
    TZahtDetailPodlogaDokumentUvoza: TStringField;
    TZahtDetailNeideNaUvj: TBooleanField;
    TZahtDetailNapomena: TStringField;
    TUvjerenje: TwwTable;
    TUvjerenjeSifra: TAutoIncField;
    TUvjerenjeDatumPodnosenja: TDateField;
    TUvjerenjeLookPodn: TStringField;
    TUvjerenjeDomaca: TBooleanField;
    TUvjerenjeSifraPodnositelja: TIntegerField;
    TUvjerenjeUpisniBroj: TStringField;
    TUvjerenjeDatumUpisa: TDateField;
    DUvjerenje: TwwDataSource;
    Uvjerenje: TfrDBDataSet;
    wwRecordViewDialog2: TwwRecordViewDialog;
    TZahtMasterSifraRasadnik: TIntegerField;
    TZahtMasterLookRasadnik: TStringField;
    TZahtDetailSifraNazSadMat: TIntegerField;
    TZahtDetailLookNazSadMat: TStringField;
    TZahtMasterSifraUvjerenje: TIntegerField;
    TUvjerenjeZdravUvje: TMemoField;
    TZahtDetailJedMjPerg1: TStringField;
    TZahtDetailJedMjPreg2: TStringField;
    TZahtDetailJedMjKolUvjer: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    wwDBNavigator1: TwwDBNavigator;
    wwNavButton6: TwwNavButton;
    wwNavButton7: TwwNavButton;
    wwNavButton8: TwwNavButton;
    wwNavButton9: TwwNavButton;
    wwDBLookupCombo2: TwwDBLookupCombo;
    wwDBLookupCombo3: TwwDBLookupCombo;
    wwDBLookupCombo5: TwwDBLookupCombo;
    wwDBLookupCombo6: TwwDBLookupCombo;
    wwDBLookupCombo7: TwwDBLookupCombo;
    wwDBLookupCombo4: TwwDBLookupCombo;
    wwDBLookupCombo10: TwwDBLookupCombo;
    wwDBLookupCombo11: TwwDBLookupCombo;
    Splitter2: TSplitter;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    ToolBar3: TToolBar;
    wwDBNavigator2: TwwDBNavigator;
    wwNavButton1: TwwNavButton;
    wwNavButton3: TwwNavButton;
    wwNavButton4: TwwNavButton;
    Panel5: TPanel;
    ToolBar4: TToolBar;
    wwDBNavigator4: TwwDBNavigator;
    wwNavButton5: TwwNavButton;
    wwNavButton13: TwwNavButton;
    wwNavButton14: TwwNavButton;
    wwNavButton15: TwwNavButton;
    ToolButton3: TToolButton;
    wwDBLookupCombo8: TwwDBLookupCombo;
    wwDBLookupCombo9: TwwDBLookupCombo;
    wwDBLookupCombo1: TwwDBLookupCombo;
    TBrUvjerenja: TwwTable;
    DBrUvjerenja: TwwDataSource;
    BrUvjerenja: TfrDBDataSet;
    wwRecordViewDialog4: TwwRecordViewDialog;
    TBrUvjerenjaSifra: TAutoIncField;
    TBrUvjerenjaPraviBrojUvjerenja: TStringField;
    TBrUvjerenjaDatum: TDateField;
    TBrUvjerenjaSifraRbr: TIntegerField;
    wwDBComboBox2: TwwDBComboBox;
    TBrUvjerenjaDodatak: TStringField;
    Panel6: TPanel;
    ToolBar2: TToolBar;
    wwDBNavigator3: TwwDBNavigator;
    wwNavButton2: TwwNavButton;
    wwNavButton10: TwwNavButton;
    ToolButton2: TToolButton;
    wwDBGrid1: TwwDBGrid;
    Splitter3: TSplitter;
    Panel7: TPanel;
    wwDBGrid5: TwwDBGrid;
    wwIButton1: TwwIButton;
    TZahtDetailBrojUvjerenja: TStringField;
    DaNePrint: TQuery;
    TZahtDetailKolicinaPrijava: TFloatField;
    TZahtDetailKolicinaPreg1: TFloatField;
    TZahtDetailKolicinaPreg2: TFloatField;
    TZahtDetailKolUvjerenje: TFloatField;
    TZahtDetailPodlogaKolVlastita: TFloatField;
    TZahtDetailPodlogaKolNabav: TFloatField;
    TZahtDetailSortaKolVlastita: TFloatField;
    TZahtDetailSortaKolNabav: TFloatField;
    PopupMenu1: TPopupMenu;
    Prikai1: TMenuItem;
    Uredi1: TMenuItem;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1Sifra: TdxDBGridMaskColumn;
    dxDBGrid1DatumPodnosenja: TdxDBGridDateColumn;
    dxDBGrid1LookPodnositelj: TdxDBGridColumn;
    dxDBGrid1ZdravUvje: TdxDBGridMemoColumn;
    dxDBGrid1Domaca: TdxDBGridCheckColumn;
    dxDBGrid1SifraPodnositeljZaht: TdxDBGridMaskColumn;
    dxDBGrid1UpisniBroj: TdxDBGridMaskColumn;
    dxDBGrid1DatumUpisa: TdxDBGridDateColumn;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid2LookRasadnik: TdxDBGridColumn;
    dxDBGrid2Sifra: TdxDBGridMaskColumn;
    dxDBGrid2SifraRasadnik: TdxDBGridMaskColumn;
    dxDBGrid2Zapisnik1: TdxDBGridMaskColumn;
    dxDBGrid2DatumZap1: TdxDBGridDateColumn;
    dxDBGrid2Zapisnik2: TdxDBGridMaskColumn;
    dxDBGrid2DatumZap2: TdxDBGridDateColumn;
    dxDBGrid2SifraUvjerenje: TdxDBGridMaskColumn;
    dxDBGrid3: TdxDBGrid;
    dxDBGrid3LookNazSadMat: TdxDBGridColumn;
    dxDBGrid3LookBiljnaVrsta: TdxDBGridColumn;
    dxDBGrid3LookSorta: TdxDBGridColumn;
    dxDBGrid3LookKlonSorte: TdxDBGridColumn;
    dxDBGrid3LookPodloga: TdxDBGridColumn;
    dxDBGrid3LookKlonPodloge: TdxDBGridColumn;
    dxDBGrid3LookKategorija: TdxDBGridColumn;
    dxDBGrid3KolicinaPrijava: TdxDBGridMaskColumn;
    dxDBGrid3KolicinaPreg1: TdxDBGridMaskColumn;
    dxDBGrid3KolicinaPreg2: TdxDBGridMaskColumn;
    dxDBGrid3KolUvjerenje: TdxDBGridMaskColumn;
    dxDBGrid3KolicinaPupovaPreg1: TdxDBGridMaskColumn;
    dxDBGrid3KolicinaStabala: TdxDBGridMaskColumn;
    dxDBGrid3BrojUvjerenja: TdxDBGridMaskColumn;
    dxDBGrid3JedMj: TdxDBGridMaskColumn;
    dxDBGrid3SortaDokumentUvoza: TdxDBGridMaskColumn;
    dxDBGrid3PodlogaDokumentUvoza: TdxDBGridMaskColumn;
    dxDBGrid3LookSortaDobav: TdxDBGridColumn;
    dxDBGrid3LookPodlogaDobav: TdxDBGridColumn;
    dxDBGrid3Sifra: TdxDBGridMaskColumn;
    dxDBGrid3SifraZahtMast: TdxDBGridMaskColumn;
    dxDBGrid3SifraBiljnaVrsta: TdxDBGridMaskColumn;
    dxDBGrid3SifraSorta: TdxDBGridMaskColumn;
    dxDBGrid3SifraKlonSorte: TdxDBGridMaskColumn;
    dxDBGrid3SifraPodloga: TdxDBGridMaskColumn;
    dxDBGrid3SifraKlonPodloge: TdxDBGridMaskColumn;
    dxDBGrid3SifraKategorija: TdxDBGridMaskColumn;
    dxDBGrid3SortaUvoz: TdxDBGridCheckColumn;
    dxDBGrid3SortaZemljaUvoza: TdxDBGridMaskColumn;
    dxDBGrid3PodlogaUvoz: TdxDBGridCheckColumn;
    dxDBGrid3PodlogazemljaUvoza: TdxDBGridMaskColumn;
    dxDBGrid3PodlogaDobavljac: TdxDBGridMaskColumn;
    dxDBGrid3SortaDobavljac: TdxDBGridMaskColumn;
    dxDBGrid3NeideNaUvj: TdxDBGridCheckColumn;
    dxDBGrid3Napomena: TdxDBGridMaskColumn;
    dxDBGrid3SifraNazSadMat: TdxDBGridMaskColumn;
    dxDBGrid3JedMjPerg1: TdxDBGridMaskColumn;
    dxDBGrid3JedMjPreg2: TdxDBGridMaskColumn;
    dxDBGrid3JedMjKolUvjer: TdxDBGridMaskColumn;
    dxDBGrid3PodlogaKolVlastita: TdxDBGridMaskColumn;
    dxDBGrid3PodlogaKolNabav: TdxDBGridMaskColumn;
    dxDBGrid3SortaKolVlastita: TdxDBGridMaskColumn;
    dxDBGrid3SortaKolNabav: TdxDBGridMaskColumn;
    TZahtDetailNeideNaZap: TBooleanField;
    Uredi2: TMenuItem;
    DajCrvene: TQuery;
    dsCrveni: TDataSource;
    frCrveni: TfrDBDataSet;
    DajCrvenevrsta: TStringField;
    DajCrvenesorta: TStringField;
    DajCrvenenapomena: TStringField;
    DajCrvenesifrapodloga: TIntegerField;
    DajCrveneNeideNaZap: TBooleanField;
    DajCrvenepodloga: TStringField;
    qTemp: TQuery;
    dsTemp: TDataSource;
    qTempvrsta: TStringField;
    qTempsorta: TStringField;
    qTempksorte: TStringField;
    qTemppodloga: TStringField;
    qTempkpodloge: TStringField;
    qTempkategorija: TStringField;
    qTempkolicinastabala: TIntegerField;
    qTempjedmjkoluvjer: TStringField;
    qTempkoluvjerenje: TFloatField;
    qTempneidenaZap: TBooleanField;
    frUvjer: TfrDBDataSet;
    ToolButton4: TToolButton;
    OpenDialog1: TOpenDialog;
    TZahtDetailPrintano: TBooleanField;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Query1: TQuery;
    qTempsifra: TIntegerField;
    ToolButton7: TToolButton;
    TZahtDetailPrintano2: TBooleanField;
    qUvj: TQuery;
    dsUvj: TDataSource;
    ToolButton9: TToolButton;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    TZahtDetailNeKakvoca: TFloatField;
    TZahtDetailJMKakvoca: TStringField;
    TZahtDetailNePrirast: TFloatField;
    TZahtDetailJMPrirast: TStringField;
    qRjesenje: TQuery;
    frRjesenje: TfrDBDataSet;
    dsRjesenje: TDataSource;
    qRjesenjevrsta: TStringField;
    qRjesenjesorta: TStringField;
    qRjesenjeksorte: TStringField;
    qRjesenjepodloga: TStringField;
    qRjesenjekpodloge: TStringField;
    qRjesenjekategorija: TStringField;
    qRjesenjekolicinastabala: TIntegerField;
    qRjesenjenekakvoca: TFloatField;
    qRjesenjejmkakvoca: TStringField;
    qRjesenjerasadnik: TStringField;
    frPrirast: TfrDBDataSet;
    qPrirast: TQuery;
    dsPrirast: TDataSource;
    qPrirastvrsta: TStringField;
    qPrirastsorta: TStringField;
    qPrirastksorte: TStringField;
    qPrirastpodloga: TStringField;
    qPrirastkpodloge: TStringField;
    qPrirastkategorija: TStringField;
    qPrirastkolicinastabala: TIntegerField;
    qPrirastneprirast: TFloatField;
    qPrirastjmprirast: TStringField;
    qPrirastrasadnik: TStringField;
    dxUvjerenje: TdxDBGrid;
    dxUvjerenjeSifra: TdxDBGridMaskColumn;
    dxUvjerenjeDatumPodnosenja: TdxDBGridDateColumn;
    dxUvjerenjeLookPodnositelj: TdxDBGridColumn;
    wwTable2Sifra: TAutoIncField;
    wwTable2Naziv: TStringField;
    wwTable2DatumUpisa: TDateField;
    TUvjerenjelookDatumX: TDateTimeField;
    dxDBGrid1Column9: TdxDBGridColumn;
    wwTable2Mjesto: TStringField;
    wwTable2Ulica: TStringField;
    N1: TMenuItem;
    Brojevi1: TMenuItem;
    N3: TMenuItem;
    Pogledajsnimljeno1: TMenuItem;
    N2: TMenuItem;
    Pogledajsnimljeno2: TMenuItem;
    N4: TMenuItem;
    Brojevi2: TMenuItem;
    TZahtDetailJedMJPupova: TStringField;
    TZahtDetailKolicinaPupovaPreg1: TFloatField;
    TZahtDetailZap5: TBooleanField;
    TZahtDetailZap6: TBooleanField;
    qRjesenjenaziv: TStringField;
    qRjesenjeSifraNazSadMat: TIntegerField;
    qPrirastSifraNazSadMat: TIntegerField;
    qPrirastnaziv: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TZahtMasterAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure TZahtDetailAfterEdit(DataSet: TDataSet);
    procedure wwDBGrid3DblClick(Sender: TObject);
    procedure TZahtMasterAfterEdit(DataSet: TDataSet);
    procedure wwRecordViewDialog1CloseDialog(Form: TwwRecordViewForm);
    procedure wwRecordViewDialog1BeforeCreateControl(
      Form: TwwRecordViewForm; curField: TField; var Accept: Boolean);
    procedure TZahtDetailAfterInsert(DataSet: TDataSet);
    procedure wwDBGrid2CalcTitleAttributes(Sender: TObject;
      AFieldName: String; AFont: TFont; ABrush: TBrush;
      var ATitleAlignment: TAlignment);
    procedure ToolButton3Click(Sender: TObject);
    procedure wwDBGrid2CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure TUvjerenjeBeforePost(DataSet: TDataSet);
    procedure TUvjerenjeAfterEdit(DataSet: TDataSet);
    procedure TUvjerenjeAfterInsert(DataSet: TDataSet);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure DzahtMasterDataChange(Sender: TObject; Field: TField);
    procedure TZahtDetailBeforePost(DataSet: TDataSet);
    procedure TBrUvjerenjaAfterEdit(DataSet: TDataSet);
    procedure TBrUvjerenjaAfterInsert(DataSet: TDataSet);
    procedure TBrUvjerenjaAfterPost(DataSet: TDataSet);
    procedure TBrUvjerenjaBeforeDelete(DataSet: TDataSet);
    procedure batonClick(Sender: TObject);
    procedure brojevi(Sender: TObject);
    procedure TBrUvjerenjaBeforePost(DataSet: TDataSet);
    procedure Ispisotpremnicenaekran1Click(Sender: TObject);
    procedure dxDBGrid2DblClick(Sender: TObject);
    procedure dxDBGrid3DblClick(Sender: TObject);
    procedure SrediIni;
    procedure dxDBGrid3CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure Rjesenje(Sender: TObject);
    procedure Pogledajsnimljeno2Click(Sender: TObject);
  private
    { Private declarations }
    SifSadMat:Integer;
  public
    { Public declarations }
    procedure Pocetna;
  end;

var
  FZahtjevVocarstvo: TFZahtjevVocarstvo;

implementation

Uses BazeModul, Main, AppUtils, SviBrojeviDlg, StrUtils, PostavkeDlg, ZapisnikDlg;
{$R *.DFM}

procedure TFZahtjevVocarstvo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFZahtjevVocarstvo.TZahtMasterAfterEdit(DataSet: TDataSet);
begin
  wwRecordViewDialog1.Execute;
end;

procedure TFZahtjevVocarstvo.TZahtMasterAfterInsert(DataSet: TDataSet);
begin
    wwRecordViewDialog1.Execute;
end;

procedure TFZahtjevVocarstvo.FormCreate(Sender: TObject);
begin
 PageControl1.ActivePage := TabSheet1;
 SifSadMat := 0;
 TUvjerenje.open;
 TZahtMaster.open;
 TZahtDetail.open;

 wwTable2.open;
 wwTable1.open;
 wwTable7.open;
 wwTable3.open;
 wwTable4.open;
 wwTable5.open;
 wwTable6.open;
 wwTable8.open;
 wwTable9.open;
 wwTable10.open;
 wwTable11.open;
 TBrUvjerenja.open;

 DzahtMaster.OnDataChange := DzahtMasterDataChange;
 TUvjerenje.Last;
end;

procedure TFZahtjevVocarstvo.SrediIni;
begin
 dxDBGrid1.IniFileName:=PathBIN+'dxDbG1.ini';
 dxDBGrid2.IniFileName:=PathBIN+'dxDbG1.ini';
 dxDBGrid3.IniFileName:=PathBIN+'dxDbG1.ini';
end;

procedure TFZahtjevVocarstvo.TZahtDetailAfterEdit(DataSet: TDataSet);
begin
    wwRecordViewDialog3.execute;
end;

procedure TFZahtjevVocarstvo.wwDBGrid3DblClick(Sender: TObject);
begin
//    TUvjerenje.edit;
    wwRecordViewDialog2.Execute;    
end;

procedure TFZahtjevVocarstvo.Pocetna;
begin
  FZahtjevVocarstvo.show;
end;

procedure TFZahtjevVocarstvo.wwRecordViewDialog1CloseDialog(Form: TwwRecordViewForm);
begin
  MainForm.LMDGlobalHotKey1.Active := False;
  WindowState := wsMaxiMized;
end;

procedure TFZahtjevVocarstvo.wwRecordViewDialog1BeforeCreateControl(Form: TwwRecordViewForm; curField: TField; var Accept: Boolean);
begin
  MainForm.LMDGlobalHotKey1.Active := True;
end;

procedure TFZahtjevVocarstvo.wwDBGrid2CalcTitleAttributes(Sender: TObject;
  AFieldName: String; AFont: TFont; ABrush: TBrush;
  var ATitleAlignment: TAlignment);
begin
    Abrush.color := $00F0CAA6;
end;

procedure TFZahtjevVocarstvo.ToolButton3Click(Sender: TObject);
Var p2,p:string;
    a,i:integer;
    datoteka:String;
begin
    KojiZapDlg.Snimi.Visible:=True;
    KojiZapDlg.ShowModal;
    if KojiZapDlg.ModalResult=mrOK then
    begin
        DajCrvene.Close;
        qTemp.SQL.LoadFromFile(PathFRF+'dajZap5ili6.sql');
        if KojiZapDlg.rZap5.Checked then    // ako je Zap5
        begin
            DajCrvene.sql.Text:=' SELECT b.naziv vrsta, s.naziv sorta,'+
                            ' z.napomena, z.sifrapodloga, z.NeideNaZap'+
                            ' FROM zahtvocaridetail z, biljnavrstavoc b, sortavoc s, NazivSadMatVOC sm'+
                            ' WHERE z.sifrabiljnavrsta=b.sifra'+
                            ' AND z.neidenazap=False'+
                            ' AND z.sifrasorta=s.sifra'+
                            ' AND z.napomena<>'''''+
                            ' AND z.sifraZahtMast=:Sifra'+
                            ' AND z.SifraNazSadMat = sm.sifra'+
                            ' AND sm.zap5=True'+
                            ' AND z.printano=False';

            qTemp.SQL.Add('AND z.zap5=False');      // daj samo one neprintane
            qTemp.SQL.Add('AND sm.zap5=True');      // oni koji idu na Zap5
            if KojiZapDlg.RadioLeft.Checked then
            begin
                qTemp.SQL.Add('AND sm.voce=True');      // samo voæe
                DajCrvene.SQL.Add('AND sm.voce=True');  // isto za Crvene
            end else
            begin
                qTemp.SQL.Add('AND sm.loza=True');      // samo lozu
                DajCrvene.SQL.Add('AND sm.loza=True');  // isto za Crvene
            end;
            DajCrvene.SQL.Add('ORDER BY b.naziv, s.naziv'); // na kraju sortiraj crvene
        end
        else if KojiZapDlg.rZap6.Checked then   // ako je Zap6
        begin
            DajCrvene.sql.Text:=' SELECT b.naziv vrsta, s.naziv sorta,'+
                            ' z.napomena, z.sifrapodloga, z.NeideNaZap'+
                            ' FROM zahtvocaridetail z, biljnavrstavoc b, sortavoc s, NazivSadMatVOC sm'+
                            ' WHERE z.sifrabiljnavrsta=b.sifra'+
                            ' AND z.neidenazap=False'+
                            ' AND z.sifrasorta=s.sifra'+
                            ' AND z.napomena<>'''''+
                            ' AND z.sifraZahtMast=:Sifra'+
                            ' AND z.SifraNazSadMat = sm.sifra'+
                            ' AND sm.zap6=True'+
                            ' AND z.printano=False';

            qTemp.SQL.Add('AND z.zap6=False');      // daj samo one neprintane
            qTemp.SQL.Add('AND sm.zap6=True');      // oni koji idu na Zap6
            if KojiZapDlg.RadioLeft.Checked then
            begin
                qTemp.SQL.Add('AND sm.voce=True');      // samo voæe
                DajCrvene.SQL.Add('AND sm.voce=True');  // isto za Crvene
            end else
            begin
                qTemp.SQL.Add('AND sm.loza=True');      // samo lozu
                DajCrvene.SQL.Add('AND sm.loza=True');  // isto za Crvene
            end;
            if KojiZapDlg.RadioButton1.Checked then     // ako je 1. printanje
                qTemp.SQL.Add('AND z.printano=False')   // samo ako nije 1. printano
            else
                qTemp.SQL.Add('AND z.printano2=False');     // samo ako nije 2. printano
            DajCrvene.SQL.Add('ORDER BY b.naziv, s.naziv'); // na kraju sortiraj crvene
        end
        else if KojiZapDlg.rSve.Checked then
        begin
            qTemp.SQL.LoadFromFile(PathFRF+'dajZapSve.sql');
            DajCrvene.sql.Text:=' SELECT b.naziv vrsta, s.naziv sorta,'+
                            ' z.napomena, z.sifrapodloga, z.NeideNaZap'+
                            ' FROM zahtvocaridetail z, biljnavrstavoc b, sortavoc s'+
                            ' WHERE z.sifrabiljnavrsta=b.sifra'+
                            ' AND z.neidenazap=False'+
                            ' AND z.sifrasorta=s.sifra'+
                            ' AND z.napomena<>'''''+
                            ' AND z.sifraZahtMast=:Sifra'+
                            ' AND (z.zap5=False OR z.zap6=False)'+
                            ' ORDER BY b.naziv, s.naziv';
        end;
        qTemp.SQL.Add('ORDER BY vrsta, sorta, ksorte, podloga, kpodloge'); // dodaj svakom upitu
//  ShowMessage(qtemp.sql.text);
        DajCrvene.Open;
//  ShowMessage(DajCrvene.parambyname('Sifra').value);

        TZahtDetail.DisableControls;
        TZahtDetail.Filtered:=True;       // Ne ispisuj NeideNaZap=True

        Podaci.frReport2.LoadFromFile(PathFRF + 'zapisnik0.frf'); // Crvene stavke
        if KojiZapDlg.rZap5.Checked then
            Podaci.frReport1.LoadFromFile(PathFRF + 'zapisnik5.frf')  // samo za zap.5
        else if KojiZapDlg.rZap6.Checked then
            Podaci.frReport1.LoadFromFile(PathFRF + 'zapisnik6.frf')  // samo za zap.6
        else if KojiZapDlg.rSve.Checked then
            Podaci.frReport1.LoadFromFile(PathFRF + 'zapisnik.frf');  // Sve stavke

        if wwTable2.locate('Sifra',TUvjerenjeSifraPodnositelja.value,[]) then
	        p:= wwTable2.fieldbyName('mjesto').asstring+', '+wwTable2.fieldbyName('ulica').asstring
        Else  p:= '';
        a:=Podaci.frReport1.Dictionary.Variables.IndexOf('PodnositeljMjesto');
        Podaci.frReport1.Dictionary.Variables.Value[a] := chr(39)+p+chr(39);

        Podaci.frCReport.Reports.Clear;
        if DajCrvene.RecordCount>0 then
            Podaci.frCReport.Reports.Add(Podaci.frReport2);     // ako ih ima
        Podaci.frCReport.Reports.Add(Podaci.frReport1);
//ShowMessage(qTemp.sql.Text);
      qTemp.Active:=True; // 'ruèno' otvori upit
      if qTemp.RecordCount>0 then
      begin
        with Podaci.frCReport do
        begin
            Title:=KojiZapDlg.Edit1.Text;
            PrepareReport;
            if KojiZapDlg.Snimi.Checked then
            begin
                if FileExists(PathZapisnika+KojiZapDlg.Edit1.Text+'.frp') then
                begin
                    if MessageDlg('Zapisnik je veæ snimljen!'+#13+'Da li ga želite pregaziti?', mtConfirmation, [mbYes,mbCancel], 0) = mrYes then
                        SavePreparedReport(PathZapisnika+KojiZapDlg.Edit1.Text+'.frp');
                end else SavePreparedReport(PathZapisnika+KojiZapDlg.Edit1.Text+'.frp');
            end;
            if (Sender as TMenuItem).Tag = 4 then ShowPreparedReport
            else if (Sender as TMenuItem).Tag = 1 then Podaci.frReport1.DesignReport
            else if (Sender as TMenuItem).Tag = 0 then Podaci.frReport2.DesignReport;
        end;

        TZahtDetail.AfterEdit:=nil;
        with qTemp do  // oznaèi šta je printano
        begin
            First;
            For i:=0 to RecordCount-1 do
            begin
                if TZahtDetail.Locate('Sifra',qTempsifra.Value,[]) then
                begin
                    TZahtDetail.Edit;
                    if KojiZapDlg.rZap5.Checked then
                        TZahtDetailZap5.Value:=True
                    else if KojiZapDlg.rZap6.Checked then
                        begin
                            TZahtDetailZap6.Value:=True;
                            if KojiZapDlg.RadioButton1.Checked then
                                TZahtDetailPrintano.Value:=True
                            else TZahtDetailPrintano2.Value:=True;
                        end
                    else // Nije ni jedan èekiran, onda se radi ...
                    begin
                        // ... ništa za sada
                    end;
                    TZahtDetail.Post;
                end;
                Next;
            end;
            Close;
        end;
        TZahtDetail.AfterEdit:=TZahtDetailAfterEdit;
      end else ShowMessage('Nemam podataka za zapisnik!');

        TZahtDetail.Filtered:=False;
        TZahtDetail.Refresh;
        TZahtDetail.EnableControls;
    end;
    KojiZapDlg.Snimi.Visible:=False;
end;

procedure TFZahtjevVocarstvo.TUvjerenjeBeforePost(DataSet: TDataSet);
begin
  Podaci.Otvoriindex('PartneriVoc');
  Podaci.TabIndex.Locate('Sifra',TUvjerenjeSifraPodnositelja.asinteger,[]);
  TUvjerenjeUpisniBroj.value := Podaci.TabIndex.fieldbyname('UpisniBroj').asstring;
  TUvjerenjeDatumUpisa.value := Podaci.TabIndex.fieldbyname('DatumUpisa').asdatetime;
end;

procedure TFZahtjevVocarstvo.TUvjerenjeAfterEdit(DataSet: TDataSet);
begin
  wwRecordViewDialog2.Execute;
end;

procedure TFZahtjevVocarstvo.TUvjerenjeAfterInsert(DataSet: TDataSet);
begin
 TUvjerenjeDatumPodnosenja.value := date;
 TUvjerenjeDomaca.value := True;
 wwRecordViewDialog2.Execute;
end;

procedure TFZahtjevVocarstvo.wwDBGrid4DblClick(Sender: TObject);
begin
    TZahtMaster.edit;
end;

procedure TFZahtjevVocarstvo.TZahtDetailAfterInsert(DataSet: TDataSet);
begin
  TZahtDetailJedMj.value := 'kom';
  TZahtDetailJedMjPerg1.value := 'kom';
  TZahtDetailJedMjPreg2.value := 'kom';
  TZahtDetailJedMjKolUvjer.value := 'kom';
  TZahtDetailKolicinaPrijava.value := 0;
  TZahtDetailKolicinaPreg1.value := 0;
  TZahtDetailKolicinaPreg2.value := 0;
  TZahtDetailKolUvjerenje.value := 0;
  TZahtDetailKolicinaStabala.value := 0;
  TZahtDetailSortaKolVlastita.value := 0;
  TZahtDetailSortaKolNabav.value := 0;
  TZahtDetailSortaUvoz.value := False;
  TZahtDetailPodlogaKolVlastita.value := 0;
  TZahtDetailPodlogaKolNabav.value := 0;
  TZahtDetailPodlogaUvoz.value := False;
  TZahtDetailNeideNaUvj.value := False;
  TZahtDetailSifraKategorija.value := 1;
  TZahtDetailBrojUvjerenja.Value := '';

  TZahtDetailSifraNazSadMat.value := SifSadMat;

  wwRecordViewDialog3.execute;
end;

procedure TFZahtjevVocarstvo.DzahtMasterDataChange(Sender: TObject; Field: TField);
begin

  TZahtDetail.Last;
  SifSadMat := TZahtDetailSifraNazSadMat.asinteger;

end;

procedure TFZahtjevVocarstvo.TZahtDetailBeforePost(DataSet: TDataSet);
begin
  if Dataset.state = dsInsert
    then SifSadMat := TZahtDetailSifraNazSadMat.asinteger;
end;


procedure TFZahtjevVocarstvo.TBrUvjerenjaAfterEdit(DataSet: TDataSet);
begin
  wwRecordViewDialog4.Execute;
end;

procedure TFZahtjevVocarstvo.TBrUvjerenjaAfterInsert(DataSet: TDataSet);
begin
  TBrUvjerenjaDodatak.value := 'VS';
  wwRecordViewDialog4.Execute;
end;

//*********************************** ovdje riješava stvaranje novog uvjerenja **********************************************
procedure TFZahtjevVocarstvo.TBrUvjerenjaAfterPost(DataSet: TDataSet);
Var n1:String;
begin
  Screen.Cursor := crHourglass;

  TZahtDetail.DisableControls;
  TZahtMaster.DisableControls;
  TZahtDetail.AfterEdit := nil;

  if (TBrUvjerenjaDodatak.asstring = 'VS') or (TBrUvjerenjaDodatak.asstring = 'LC') then
  begin
    if TBrUvjerenjaDodatak.asstring = 'VS' then n1 := '1'
    Else n1 := '3';

    TZahtMaster.first;
    while not TZahtMaster.EOF do
    begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('UPDATE zahtVocariDetail');
      Query1.SQL.Add('SET brojuvjerenja = '''+TBrUvjerenjaPraviBrojUvjerenja.asstring+'''' );
      Query1.SQL.Add('WHERE SifraZahtMast = '+TZahtMasterSifra.asstring);
      Query1.SQL.Add(' and BrojUvjerenja = '''' and (SifraNazSadMat = '+n1);
      Query1.SQL.Add(' and NeideNaUvj = False');
      Query1.SQL.Add(' and KolUvjerenje <> 0)');
//    ShowMessage(Query1.SQL.Text);
      Query1.ExecSQL;
      TZahtMaster.Next;
    end;

  End // kraj ako je LC ili VS
  Else
    Begin // ovdje ide za R - repro mterijal ***********************************************************
        TZahtMaster.first;
        while not TZahtMaster.EOF do
        begin
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('UPDATE zahtVocariDetail');
            Query1.SQL.Add('SET brojuvjerenja = '''+TBrUvjerenjaPraviBrojUvjerenja.asstring+'''');
            Query1.SQL.Add('WHERE SifraZahtMast = '+TZahtMasterSifra.asstring);
            Query1.SQL.Add(' AND BrojUvjerenja='''' AND ((SifraNazSadMat=2 OR SifraNazSadMat>3)');
            Query1.SQL.Add(' AND NeideNaUvj = False AND KolUvjerenje <> 0)');
            Query1.ExecSQL;
            TZahtMaster.Next;
        end;
    End;

   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('SELECT COUNT(sifra) as broj');
   Query1.SQL.Add('FROM ZahtVocariDetail');
   Query1.SQL.Add('WHERE BrojUvjerenja = '''+TBrUvjerenjaPraviBrojUvjerenja.AsString+'''');
   Query1.open;

   if Query1.FieldByName('broj').AsInteger = 0 then
   begin
     MessageDlg('Ne postoje podaci za novo uvjerenje !', mtWarning, [mbOK], 0);
     TBrUvjerenja.delete;
   End;

  TZahtDetail.AfterEdit := TZahtDetailAfterEdit;

  TZahtDetail.filtered := False;
  TZahtDetail.filter:='';

  TZahtDetail.EnableControls;
  TZahtMaster.EnableControls;
  Screen.Cursor := crDefault;
  Query1.Close;
end;

procedure TFZahtjevVocarstvo.TBrUvjerenjaBeforeDelete(DataSet: TDataSet);
begin
  Screen.Cursor := crHourglass;
  Podaci.Otvoriindex('ZahtVocariDetail.DB');
  while not Podaci.TabIndex.EOF do
     begin
       if Podaci.TabIndex.fieldByName('BrojUvjerenja').asstring = TBrUvjerenjaPraviBrojUvjerenja.asstring then begin
         Podaci.TabIndex.edit;
         Podaci.TabIndex.fieldByName('BrojUvjerenja').asstring := '';
         Podaci.TabIndex.Post;
       End;
       Podaci.TabIndex.next;
     End;
  Screen.Cursor := crDefault;
  if FileExists(copy(TBrUvjerenjaPraviBrojUvjerenja.asstring,1,3)+'.frp') then
    DeleteFile(copy(TBrUvjerenjaPraviBrojUvjerenja.asstring,1,3)+'.frp');
end;

procedure TFZahtjevVocarstvo.batonClick(Sender: TObject);
var a:Integer;
    s:String;
begin                                                       // stara rutina
  a := Pos('/',TBrUvjerenjaPraviBrojUvjerenja.asstring); // NPos('/',TBrUvjerenjaPraviBrojUvjerenja.asstring,1);
  s := copy(TBrUvjerenjaPraviBrojUvjerenja.asstring,1,a-1);

  if not FileExists(PathUvjerenja+s+'.frp') then
  begin
    MessageDlg('Ne postoji snimljeno uvjerenje br. '+TBrUvjerenjaPraviBrojUvjerenja.asstring, mtWarning, [mbOK], 0);
    exit;
  End;

  Podaci.frReport1.LoadPreparedReport(PathUvjerenja+s+'.frp');
  Podaci.frReport1.ShowPreparedReport;
end;

procedure TFZahtjevVocarstvo.brojevi(Sender: TObject);
begin
    ShowDialog(TFSviBrojeviDlg);
end;

procedure TFZahtjevVocarstvo.TBrUvjerenjaBeforePost(DataSet: TDataSet);
begin
  Podaci.Otvoriindex('BrojeviUvjerenja.db');
  If Podaci.TabIndex.Locate('PraviBrojUvjerenja',TBrUvjerenjaPraviBrojUvjerenja.asstring,[]) then
  begin
    MessageDlg('Broj uvjerenja '+TBrUvjerenjaPraviBrojUvjerenja.asstring+' veæ postoji u bazi !', mtWarning, [mbOK], 0);
    Abort;
  End;
end;

procedure TFZahtjevVocarstvo.Ispisotpremnicenaekran1Click(Sender: TObject);
Var p2,p,stari_filter:string;
    a:integer;
    datoteka:String;
begin
  datoteka := 'UvjerenjeR.frf';
  if (TBrUvjerenjaDodatak.asstring = 'VS') or (TBrUvjerenjaDodatak.asstring = 'LC')
    then datoteka := 'Uvjerenje.frf';

  if not FileExists(PathFRF + datoteka) then
  begin
    MessageDlg('Ne postoji datoteka obrazca  -> '+datoteka, mtWarning, [mbOK], 0);
    exit;
  End
  Else Podaci.frReport1.LoadFromFile(PathFRF + datoteka);

  //za podnositelja
  if wwTable2.locate('Sifra',TUvjerenjeSifraPodnositelja.value,[]) then
    p:=wwTable2.fieldbyName('mjesto').asstring+', '+wwTable2.fieldbyName('ulica').asstring
  Else  p:= '';
  a:=Podaci.frReport1.Dictionary.Variables.IndexOf('PodnositeljMjesto');
  Podaci.frReport1.Dictionary.Variables.Value[a] := chr(39)+p+chr(39);

//  TZahtDetail.DisableControls;
//  TZahtMaster.DisableControls;

  TZahtDetail.filtered := False;
  stari_filter:=TZahtDetail.filter;
  TZahtDetail.filter:='BrojUvjerenja='''+TBrUvjerenjaPraviBrojUvjerenja.asstring+''' AND NeIdeNaUvj=False AND KolUvjerenje<>0';
//  TZahtDetail.filter:='BrojUvjerenja='''' AND NeIdeNaUvj=False AND KolUvjerenje<>0';
  TZahtDetail.filtered := true;

  p:='';
  TZahtMaster.first;
  while not TZahtMaster.EOF do
   begin
     if TZahtDetail.recordcount > 0 then
        if TZahtMasterZapisnik2.asstring<>'' then
            p := p + TZahtMasterZapisnik2.asstring+' od '+TZahtMasterDatumZap2.asstring+'., ';
     TZahtMaster.Next;
   end;
  p := copy(p,0,length(p)-2);

  a:=Podaci.frReport1.Dictionary.Variables.IndexOf('Zapisnici');
  Podaci.frReport1.Dictionary.Variables.Value[a] := chr(39)+p+chr(39);

  qUvj.Sql.Clear;
  qUvj.Sql.Add('SELECT b.naziv vrsta, s.naziv sorta, v2.naziv ksorte, p.naziv podloga,'+
              ' v1.naziv kpodloge, k.naziv kategorija, z.kolicinastabala, '+
              ' z.koluvjerenje, z.jedmjkoluvjer'+
              ' FROM zahtvocaridetail z'+
              ' INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifra)'+
              ' INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)'+
              ' LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sifra)'+
              ' LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.sifra)'+
              ' LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)'+
              ' LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sifra)'+
              ' WHERE  z.sifraZahtMast = :Sifra AND z.NeideNaUvj=False AND z.KolUvjerenje<>0'+
              ' AND z.brojuvjerenja='''+TBrUvjerenjaPraviBrojUvjerenja.asstring+''''+
              ' ORDER BY vrsta, sorta, ksorte, podloga, kpodloge');

  if sender = nil then Podaci.frReport1.ShowReport
  else if (Sender as TMenuItem).Tag = 1 then Podaci.frReport1.ShowReport
       else if (Sender as TMenuItem).Tag = 2 then Podaci.frReport1.DesignReport
            Else begin
                   Podaci.frReport1.PrepareReport;
                   Podaci.frReport1.PrintPreparedReport('1',1,true,TfrPrintPages(1));
                 End;

  TZahtDetail.filtered := False;
  TZahtDetail.filter:=stari_filter;
//  TZahtDetail.EnableControls;
//  TZahtMaster.EnableControls;
end;

procedure TFZahtjevVocarstvo.dxDBGrid2DblClick(Sender: TObject);
begin
    TZahtMaster.edit;
end;

procedure TFZahtjevVocarstvo.dxDBGrid3DblClick(Sender: TObject);
begin
    TZahtDetail.edit;
end;

procedure TFZahtjevVocarstvo.wwDBGrid2CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
 if Field.FieldName = 'LookBiljnaVrsta' then
     if TZahtDetailNapomena.asstring <> '' then
       if Highlight then begin
        AFont.Style := [fsBold];
        AFont.Color := $008080FF;
       End
       else ABrush.Color := $008080FF;
end;

procedure TFZahtjevVocarstvo.dxDBGrid3CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
    if (AColumn=dxDBGrid3LookBiljnaVrsta) then
    begin
        Value := ANode.Values[dxDBGrid3Napomena.Index];
        if Value <> '' then
        begin
            if ASelected then
            Begin
                AFont.Style := [fsBold];
                AFont.Color := $008080FF;
            end
            else AColor := $008080FF;
        end;
//        else AColor := clBtnFace;
    end;
end;

procedure TFZahtjevVocarstvo.FormActivate(Sender: TObject);
begin
    SrediIni;
end;

procedure TFZahtjevVocarstvo.ToolButton4Click(Sender: TObject);
var fajl: String;
begin
    KojiZapDlg.Snimi.Visible:=False;
    KojiZapDlg.ShowModal;
    if KojiZapDlg.ModalResult=mrOK then
    begin
        if FileExists(PathZapisnika+KojiZapDlg.Edit1.Text+'.frp') then
        begin
            Podaci.frReport3.LoadPreparedReport(PathZapisnika+KojiZapDlg.Edit1.Text+'.frp');
            Podaci.frReport3.Title:=KojiZapDlg.Edit1.Text;
            Podaci.frReport3.ShowPreparedReport;
        end
        else ShowMessage('Zapisnik nije snimljen!');
    end;
    KojiZapDlg.Snimi.Visible:=True;
end;

procedure TFZahtjevVocarstvo.ToolButton6Click(Sender: TObject);
begin
    KojiZapDlg.ShowModal;
    if KojiZapDlg.ModalResult=mrOK then
    begin
      try
        with DaNePrint do
        begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE zahtvocaridetail SET');
            if KojiZapDlg.rZap5.Checked then SQL.Add('Zap5=False')
            else if KojiZapDlg.rZap6.Checked then
                    begin
                        SQL.Add('Zap6=False,');
                        if KojiZapDlg.RadioButton1.Checked then
                            SQL.Add('printano=False')
                        else SQL.Add('printano2=False');
                    end          // sredi reprint
            else // Nije ni jedan èekiran, onda se sve resetira...
                SQL.Add('Zap5=False, Zap6=False, printano=False, printano2=False');
            SQL.Add('WHERE sifraZahtMast = :Sifra');
            ExecSQL;
        end;
        ShowMessage('Zapisnici za odabrani rasadnik'+#13+'se sada mogu ponovo printati.');
      except
      end;
    end;
end;

procedure TFZahtjevVocarstvo.Rjesenje(Sender: TObject);
var p, stari_filter, s2 :string;
    a, a2 :integer;
    bioFilter :boolean;
begin
    TZahtDetail.DisableControls;
    if TZahtDetail.Filtered then
    begin
        TZahtDetail.Filtered:=False;
        bioFilter:=True;
    end
    else bioFilter:=False;
    stari_filter:=TZahtDetail.filter;

  with Podaci.frReport1 do
  begin
    LoadFromFile(PathFRF+'rjesenje.frf');

    if wwTable2.locate('Sifra',TUvjerenjeSifraPodnositelja.value,[]) then
        p:= wwTable2.fieldbyName('mjesto').asstring+', '+wwTable2.fieldbyName('ulica').asstring
    Else  p:= '';
    a:=Dictionary.Variables.IndexOf('PodnositeljMjesto');
    Dictionary.Variables.Value[a] := chr(39)+p+chr(39);

    p:='';
    TZahtMaster.first;
    while not TZahtMaster.EOF do
    begin
        if TZahtDetail.recordcount > 0 then
            if TZahtMasterZapisnik2.asstring<>'' then
                p := p + TZahtMasterZapisnik2.asstring+' od '+TZahtMasterDatumZap2.asstring+'., ';
        TZahtMaster.Next;
    end;
    p:= copy(p,0,length(p)-2);

    a:=Dictionary.Variables.IndexOf('Zapisnici');
    Dictionary.Variables.Value[a] := chr(39)+p+chr(39);

    with qRjesenje do
    begin
        SQL.Clear;
        SQL.Text:='SELECT b.naziv vrsta, s.naziv sorta,'+
            ' v2.naziv ksorte, p.naziv podloga,'+
            ' v1.naziv kpodloge, k.naziv kategorija,'+
            ' z.kolicinastabala, z.nekakvoca, z.jmkakvoca,'+
            ' r.naziv rasadnik, z.SifraNazSadMat, sm.naziv'+
            ' FROM zahtvocaridetail z'+
            ' INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifra)'+
            ' INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)'+
            ' LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sifra)'+
            ' LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.sifra)'+
            ' LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)'+
            ' LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sifra)'+
            ' LEFT OUTER JOIN NazivSadMatVOC sm ON (z.SifraNazSadMat = sm.sifra),'+
            ' rasadnicivoc r INNER JOIN zahtvocarimaster m ON (r.sifra = m.sifrarasadnik)'+
            ' INNER JOIN uvjerenje u ON (m.sifrauvjerenje = u.sifra)'+
            ' WHERE  z.sifraZahtMast = m.sifra'+
            ' AND u.sifrapodnositeljzaht = :SifraPodnositeljZaht'+
            ' AND z.nekakvoca<>0'+
            ' AND z.brojuvjerenja='''+TBrUvjerenjaPraviBrojUvjerenja.asstring+''''+
            ' ORDER BY rasadnik, vrsta, sorta, ksorte, podloga, kpodloge';
        Open;
    end;
    with qPrirast do
    begin
        SQL.Clear;
        SQL.Text:='SELECT b.naziv vrsta, s.naziv sorta,'+
            ' v2.naziv ksorte, p.naziv podloga,'+
            ' v1.naziv kpodloge, k.naziv kategorija,'+
            ' z.kolicinastabala, z.neprirast, z.jmprirast,'+
            ' r.naziv rasadnik, z.SifraNazSadMat, sm.naziv'+
            ' FROM zahtvocaridetail z'+
            ' INNER JOIN biljnavrstavoc b  ON  (z.sifrabiljnavrsta = b.sifra)'+
            ' INNER JOIN sortavoc s  ON  (z.sifrasorta = s.sifra)'+
            ' LEFT OUTER JOIN kategorijavoc k ON (z.SifraKategorija = k.sifra)'+
            ' LEFT OUTER JOIN vrsteklonova v1 ON (z.SifraKlonPodloge = v1.sifra)'+
            ' LEFT OUTER JOIN vrstepodloga p ON (z.SifraPodloga = p.sifra)'+
            ' LEFT OUTER JOIN vrsteklonova v2 ON (z.SifraKlonSorte = v2.sifra)'+
            ' LEFT OUTER JOIN NazivSadMatVOC sm ON (z.SifraNazSadMat = sm.sifra),'+
            ' rasadnicivoc r INNER JOIN zahtvocarimaster m ON (r.sifra = m.sifrarasadnik)'+
            ' INNER JOIN uvjerenje u ON (m.sifrauvjerenje = u.sifra)'+
            ' WHERE  z.sifraZahtMast = m.sifra'+
            ' AND u.sifrapodnositeljzaht = :SifraPodnositeljZaht'+
            ' AND z.neprirast<>0'+
            ' AND z.brojuvjerenja='''+TBrUvjerenjaPraviBrojUvjerenja.asstring+''''+
            ' ORDER BY rasadnik, vrsta, sorta, ksorte, podloga, kpodloge';
        Open;
    end;

    a:=Dictionary.Variables.IndexOf('UkuKakv');
    Dictionary.Variables.Value[a] := chr(39)+IntToStr(qRjesenje.RecordCount)+chr(39);
    a:=Dictionary.Variables.IndexOf('UkuPrir');
    Dictionary.Variables.Value[a] := chr(39)+IntToStr(qPrirast.RecordCount)+chr(39);

    if qRjesenje.RecordCount+qPrirast.RecordCount>0 then
    begin
        Title:='Rješenje '+TBrUvjerenjaPraviBrojUvjerenja.AsString;
                                                                  // stara rutina
        a2:= Pos('/',TBrUvjerenjaPraviBrojUvjerenja.asstring); // NPos('/',TBrUvjerenjaPraviBrojUvjerenja.asstring,1);
        s2:= copy(TBrUvjerenjaPraviBrojUvjerenja.asstring,1,a2-1);
        FileName:=PathRjesenja+s2+'.frp';

        PrepareReport;
        if (Sender as TMenuItem).Tag = 1 then ShowPreparedReport
        else if (Sender as TMenuItem).Tag = 0 then DesignReport;
    end
    else ShowMessage('Nemam podataka za rješenje!');
  end;

    TZahtDetail.EnableControls;
    TZahtDetail.filter:=stari_filter;
    if bioFilter then TZahtDetail.Filtered:=True;
end;

procedure TFZahtjevVocarstvo.Pogledajsnimljeno2Click(Sender: TObject);
var a:Integer;
    s:String;
begin                                                      // stara rutina
    a := Pos('/',TBrUvjerenjaPraviBrojUvjerenja.asstring); // NPos('/',TBrUvjerenjaPraviBrojUvjerenja.asstring,1);
    s := copy(TBrUvjerenjaPraviBrojUvjerenja.asstring,1,a-1);

    if not FileExists(PathRjesenja+S+'.frp') then
    begin
        MessageDlg('Ne postoji snimljeno rješenje br. '+TBrUvjerenjaPraviBrojUvjerenja.AsString, mtWarning, [mbOK], 0);
        exit;
    End;

    Podaci.frReport1.LoadPreparedReport(PathRjesenja+S+'.frp');
    Podaci.frReport1.ShowPreparedReport;
end;

end.


