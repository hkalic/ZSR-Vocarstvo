unit UnosTemplate;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, DBTables, DB, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons,
  DBCtrls, Mask, DBLists, RxDBComb,Servisi, ToolEdit, RXDBCtrl, RXLookup,
  Placemnt, RxQuery, ComCtrls, Tabnotbk, ToolWin, RXCtrls, FR_PTabl;


type
  TFUnosTemplate = class(TObrijForm)
    DQ: TDataSource;
    PanelGlava: TPanel;
    Label1: TLabel;
    Label33: TLabel;
    EdTrazi: TRxDBLookupCombo;
    OrderCombo: TComboBox;
    TQ: TRxQuery;
    DS: TDataSource;
    Pregled: TPageControl;
    Tpregled: TTabSheet;
    Tunos: TTabSheet;
    TBar: TToolBar;
    DBNavigator3: TDBNavigator;
    BtnNovi: TToolButton;
    BtnIzmijeni: TToolButton;
    BtnIzlaz: TToolButton;
    BtnIspis: TToolButton;
    PanelGrid: TPanel;
    DBGrid11: TRxDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    BtnSpremi: TBitBtn;
    BtnCancel: TBitBtn;
    BtnPovratak: TBitBtn;
    LbLStanje: TLabel;
    DBStatusLabel1: TDBStatusLabel;
    ToolButton1: TToolButton;
    frPrintTable1: TfrPrintTable;
    procedure ModalOK(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSStateChange(Sender: TObject);
    procedure KeyChange(Sender: TObject);
    procedure DBGrid11CheckButton(Sender: TObject; ACol: Integer;
      Field: TField; var Enabled: Boolean);
    procedure DBGrid11TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure PregledChange(Sender: TObject);
    procedure TsAfterEdit(DataSet: TDataSet);
    procedure TQAfterOpen(DataSet: TDataSet);
    procedure SetMacro(MacroName, Value: string);
    procedure BtnNoviClick(Sender: TObject);
    procedure BtnIzmijeniClick(Sender: TObject);
    procedure BtnSpremiClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnIzlazClick(Sender: TObject);
    procedure BtnPovratakClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid11KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Kdown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnObrisiClick(Sender: TObject);
    procedure DBGrid11GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure Kpress(Sender: TObject; var Key: Char);
    procedure aBeforeDelete(DataSet: TDataSet);
    procedure aBeforeEdit(DataSet: TDataSet);
    procedure aBeforeInsert(DataSet: TDataSet);
    procedure aBeforeOpen(DataSet: TDataSet);
    procedure BtnIspisClick(Sender: TObject);
    procedure DBGrid11GetBtnParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; var SortMarker: TSortMarker;
      IsDown: Boolean);
  private
    BioEdit : Boolean;
    Procedure SelectPrvi;
    Procedure PostaviDBEdit;
    procedure StanjeBatona(Sender: TObject);
    function  Getsifra: Variant;
    procedure Setsifra(N: Variant);

  public
    property sifra: Variant read Getsifra write Setsifra;
  end;

var
  FUnosTemplate: TFUnosTemplate;
  UnosStyle:TFormStyle;
implementation

uses BazeModul;
{$R *.DFM}


procedure TFunosTemplate.SetMacro(MacroName, Value: string);
Var S:String;
begin
  S:=Value;
  with TQ do
  begin
//    if ds.dataset.Name <> 'TPrijava' then
    IF MacroName = 'ORDER' then S:= MacroByName('FROM').AsString + '."' + Value +'"';
    MacroByName(MacroName).AsString := S;
    DisableControls;
    Screen.Cursor:=CrSQLWait;
    try
      Close;
      Open;
    finally
      EnableControls;
      If DQ.DataSet.findField('PREZIME') <> nil then EdTrazi.LookUpDisplay := Value+';PREZIME;IME'
      else If DQ.DataSet.findField('BROJ') <> nil then EdTrazi.LookUpDisplay := Value+';BROJ'
           Else EdTrazi.LookUpDisplay := Value+';NAZIV';
      Screen.Cursor:=CrDefault;
    end;
  end;
end;


function TFUnosTemplate.Getsifra: Variant;
begin
  if Pregled.ActivePage = TPregled then Result := DQ.dataset.fieldbyname('Sifra').Value
  Else Result := DS.dataset.fieldbyname('Sifra').Value
end;

procedure TFUnosTemplate.Setsifra(N: Variant);
begin
  DQ.dataset.Locate('Sifra',N, []);
end;



procedure TFUnosTemplate.ModalOK(Sender: TObject);
begin
 ModalResult := mrOK;
end;

Procedure TfUnosTemplate.PostaviDBEdit;
Var i:Integer;
begin
  For i:= 0 to Panel1.ControlCount -1 do
   if Panel1.Controls[i].ClassName = 'TDBEdit' then (Panel1.controls[i] as tdbedit).OnKeyDown:=KDown;
end;






procedure TFUnosTemplate.FormCreate(Sender: TObject);
Var I:Integer;
    I2, Code: Integer;
    s1,koje:String;
begin
 PostaviDBEdit;
 TBar.Parent := TPregled;
 Pregled.ActivePage:=Tpregled;
 FormStyle:=UnosStyle;
 BioEdit := False;
// if ds.dataset.Name <> 'TPrijava' then
     TQ.MacroByName('FROM').AsString := TTable(DS.Dataset).TableName;
 Koje := '';
 for I := 0 to Ds.DataSet.FieldCount - 1 do
       if Ds.DataSet.Fields[i].Visible then koje := Koje + ', '+Ds.DataSet.Fields[i].FieldName;
 Koje := copy(koje,3,length(koje)-2);
// if ds.dataset.Name <> 'TPrijava' then
 TQ.MacroByName('KOJE').AsString := Koje;
// TQ.MacroByName('WHERE').AsString := '1 = 1';

  With OrderCombo,DS.DataSet do
   begin
    Clear;
    for I := 0 to FieldCount - 1 do
       If (not (Fields[i] is TBlobField)) and (Fields[i].Visible ) then
       Items.AddObject(Fields[I].DisplayLabel,Fields[I]);(* Nazivi svih polja *)
    Val(filter[1], I2, Code);
    s1 := copy(filter,2,length(filter)-1);
    filter := '';
    if i2 <> 0 then ItemIndex := i2-1
    Else ItemIndex := 0;
  end;
  TPregled.Caption := TPregled.Caption + '  '+s1+'   ';
  if ds.dataset.name = 'TOsnovna' then TUnos.Caption := TUnos.Caption + '  PACIJENTA   '
  Else TUnos.Caption := TUnos.Caption + '  '+s1+'   ';
  SetMacro('ORDER',TField(OrderCombo.Items.Objects[OrderCombo.ItemIndex]).FieldName);
end;

procedure TFUnosTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=CaFree;
end;

procedure TFUnosTemplate.DSStateChange(Sender: TObject);
begin
 StanjeBatona(Sender);

 if Ds.State = DsEdit then LbLStanje.Caption := 'Izmjena podataka'
 Else if Ds.State = DsInsert then LbLStanje.Caption := 'Unos novog'
      Else LbLStanje.Caption := '';
 LblStanje.Visible :=  LbLStanje.Caption <> '';
end;

procedure TFUnosTemplate.StanjeBatona(Sender: TObject);
begin
 BtnSpremi.Enabled:=Ds.State in DsEditModes;
 BtnCancel.Enabled:=BtnSpremi.Enabled;
 BtnNovi.Enabled := not (Ds.State in DsEditModes);
 BtnIzmijeni.Enabled := BtnNovi.Enabled;

// BtnObrisi.Enabled := BtnNovi.Enabled;
 BtnIspis.Enabled := BtnNovi.Enabled and not (Pregled.ActivePage = TUnos);

 BtnPovratak.Enabled := BtnNovi.Enabled;
 BtnIzlaz.Enabled := BtnNovi.Enabled;
 DBNavigator3.Enabled := BtnNovi.Enabled;
end;




procedure TFUnosTemplate.KeyChange(Sender: TObject);
begin
 if OrderCombo.ItemIndex > -1 then SetMacro('ORDER',TField(OrderCombo.Items.Objects[OrderCombo.ItemIndex]).FieldName);
end;

procedure TFUnosTemplate.DBGrid11CheckButton(Sender: TObject; ACol: Integer;
  Field: TField; var Enabled: Boolean);
begin
  Enabled := (Field <> nil) and not (Field is TBlobField);
end;

procedure TFUnosTemplate.DBGrid11TitleBtnClick(Sender: TObject; ACol: Integer; Field: TField);
begin
 OrderCombo.ItemIndex := Acol;
 if (Field <> nil) then SetMacro('ORDER',Field.FieldName);
end;


Procedure TfUnosTemplate.SelectPrvi;
Var i:Integer;
begin
  For i:= 0 to Panel1.ControlCount -1 do
   if Panel1.Controls[i].Tag AND 128 = 128 then
    begin
     TwinControl(Panel1.Controls[i]).SetFocus;
     Exit;
    end;
end;


procedure TFUnosTemplate.PregledChange(Sender: TObject);
begin
  If  Pregled.ActivePage = TUnos then
  begin
   DBNavigator3.Visible := True;
   BtnNovi.Visible := True;
   BtnIzmijeni.Visible := True;
//   BtnObrisi.Visible := True;
   DS.DataSet.Open;
   DS.DataSet.Locate('Sifra',TQ.FieldByName('Sifra').Value,[]);
   DBNavigator3.DataSource := DS;
   TBar.Parent := TUnos;
  end
  else if Pregled.ActivePage = Tpregled then begin
{    TQ.Refresh;}
    DBGrid11.Parent := PanelGrid;
    DBNavigator3.Visible := True;
    BtnNovi.Visible := True;
    BtnIzmijeni.Visible := True;
//    BtnObrisi.Visible := True;

    if bioEdit then KeyChange(Nil);
    BioEdit := False;
    TQ.Locate('Sifra',Ds.DataSet.FieldByName('Sifra').Value,[]);
    DS.DataSet.Close;
    DBNavigator3.DataSource := DQ;
    TBar.Parent := TPregled;
    EdTrazi.SetFocus;
   end;

end;



procedure TFUnosTemplate.TsAfterEdit(DataSet: TDataSet);
begin
 SelectPrvi;
end;


procedure TFUnosTemplate.TQAfterOpen(DataSet: TDataSet);
Var I:Integer;
begin
  With DS.DataSet do
    for I := 0 to FieldCount - 1 do
    if Ds.DataSet.Fields[i].Visible then
     With TQ.FieldByName(Fields[I].FieldName) do
      begin
        if Ds.DataSet.Fields[i].Visible then
          begin
           DisplayLabel:=Fields[i].DisplayLabel;
           EditMask:=Fields[I].EditMask;
           TQ.FieldByName(Fields[I].FieldName).Visible:=Ds.DataSet.Fields[i].Visible;
           If Fields[i] is TBooleanField Then
           If Fields[I].FieldName = 'SpolMuski' then TBooleanField(TQ.FieldByName(Fields[I].FieldName)).DisplayValues:='M;Ž'
           else If Fields[I].FieldName = 'OblikAmpula' then TBooleanField(TQ.FieldByName(Fields[I].FieldName)).DisplayValues:='Ampula;Lagena'
                Else If Fields[I].FieldName = 'JmjMiligrami' then TBooleanField(TQ.FieldByName(Fields[I].FieldName)).DisplayValues:='Mg;J'
                     Else TBooleanField(TQ.FieldByName(Fields[I].FieldName)).DisplayValues:='Da;Ne';
         End;
      end;

end;




procedure TFUnosTemplate.BtnNoviClick(Sender: TObject);
begin

  If  Pregled.ActivePage <> TUnos then
    begin
      Pregled.ActivePage := TUnos;
      PregledChange(nil);
    End;
  Ds.Dataset.Append;
end;



procedure TFUnosTemplate.BtnIzmijeniClick(Sender: TObject);
begin
  If  Pregled.ActivePage <> TUnos then
    begin
      Pregled.ActivePage := TUnos;
      PregledChange(nil);
    End;
  Ds.DataSet.Edit;
end;

procedure TFUnosTemplate.BtnSpremiClick(Sender: TObject);
begin
  ds.dataset.post;
  BioEdit := True;
  if FormStyle = FsNormal then ModalOK(Sender);
end;

procedure TFUnosTemplate.BtnCancelClick(Sender: TObject);
begin
  Ds.DataSet.Cancel;
  if FormStyle = FsNormal then ModalOK(Sender);
end;

procedure TFUnosTemplate.FormActivate(Sender: TObject);
begin
  StanjeBatona(Sender);
end;



procedure TFUnosTemplate.BtnIzlazClick(Sender: TObject);
begin
  Close;
end;

procedure TFUnosTemplate.BtnPovratakClick(Sender: TObject);
begin
 Pregled.ActivePage := TPregled;
 PregledChange(nil);
end;

procedure TFUnosTemplate.Kdown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Case Key of
      VK_Up:
           begin
             selectnext(sender as twincontrol,False,true);
             key:=0;
           End;
      VK_Down, VK_return:
           begin
             selectnext(sender as twincontrol,True,true);
             key:=0;
           End;

End;
end;

procedure TFUnosTemplate.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
  begin
    If  Pregled.ActivePage = TUnos then
       if (Ds.State in DsEditModes) then Ds.DataSet.Cancel
       else BtnPovratakClick(Sender)
    Else Close;
  End;
end;

procedure TFUnosTemplate.DBGrid11KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (FormStyle = FsMDIChild) then BtnIzmijeniClick(Sender)
  else ModalOK(Sender);
end;

procedure TFUnosTemplate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F5 then BtnNoviClick(Sender)
  else if Key = VK_F6 then BtnIzmijeniClick(Sender);
end;


procedure TFUnosTemplate.BtnObrisiClick(Sender: TObject);
begin
  If  Pregled.ActivePage <> TUnos then
    begin
      Pregled.ActivePage := TUnos;
      PregledChange(nil);
    End;
 if MessageDlg('Da li stvarno želite obrisati podatak ?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Ds.Dataset.Delete;
     BioEdit := True;
  End;
end;

procedure TFUnosTemplate.DBGrid11GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  Background := $00B8EDFA;
  if OrderCombo.ItemIndex > -1 then if Field.FieldName = TField(OrderCombo.Items.Objects[OrderCombo.ItemIndex]).FieldName then Background := $00B0B0FF;
  if Highlight then begin
    AFont.Color := clHighlightText;
    if DBGrid11.Focused then Background := clHighlight
    else Background := clGray;
  end;
end;


procedure TFUnosTemplate.Kpress(Sender: TObject; var Key: Char);
begin
 if key =#13 then begin selectnext(sender as twincontrol,true,true);key:=#0; end;
end;


procedure TFUnosTemplate.aBeforeDelete(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cDelete) then raise exception.create(cNeovlasteno);
end;


procedure TFUnosTemplate.aBeforeEdit(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cEdit) then raise exception.create(cNeovlasteno);
end;

procedure TFUnosTemplate.aBeforeInsert(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cInsert) then raise exception.create(cNeovlasteno);
end;

procedure TFUnosTemplate.aBeforeOpen(DataSet: TDataSet);
begin
//  if not PristupBazi(dataSet.Tag,cOpen) then raise exception.create(cNeovlasteno);
end;



{
- Postaviti prvom dbEdit-u TAG vrijednost 128 da bi bio prvi selektiran
- Table objektu postaviti Events sve BEFORE open, insert, edit, delete
istom Table objektu u propertis FILTER upisati broj polja po kojem æe biti
sortirano kada se kreira forma i odmah zadim rijeèima napisati nešto da bi bilo
prikazano u nazivu TTABEDA npr. 3PACIJENTI
- Table objektu postaviti AfterEdit i AfterInsert = TSAFTEREDIT}

procedure TFUnosTemplate.BtnIspisClick(Sender: TObject);
begin
  frPrintTable1.Pageheader.text:=Caption;
//  frPrintTable1.PageHeader.text:=Podaci.TabSetUp.FieldByName('naziv1').asstring+' ,  '+#13+#13+
//                                Podaci.TabSetUp.FieldByName('adresa1').asstring;
  frPrintTable1.ShowReport;
end;


procedure TFUnosTemplate.DBGrid11GetBtnParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor;
  var SortMarker: TSortMarker; IsDown: Boolean);
begin
  if OrderCombo.ItemIndex > -1 then if (Field <> nil) and (Field.FieldName=TField(OrderCombo.Items.Objects[OrderCombo.ItemIndex]).FieldName) then Background := $00B0B0FF;
end;

end.
