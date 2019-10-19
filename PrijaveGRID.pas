unit PrijaveGRID;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids,  ExtCtrls, Db, AppUtils, IniFiles,
  Wwdatsrc, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,
  StdCtrls, dxTLClms, dxExEdtr, ComCtrls, ToolWin, dxLayout, DBTables,
  dxmdaset, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, ImgList, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
  
  TFPrijaveGRID = class(TForm)
    Panel1: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Spliter1: TSplitter;
    ToolBar1: TToolBar;
    spHint: TShape;
    Panel2: TPanel;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Label1: TLabel;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    SaveDialog: TSaveDialog;
    ToolButton12: TToolButton;
    dxDBGridLayoutList1: TdxDBGridLayoutList;
    dxDBGrid1: TdxDBGrid;
    OvajNEKORISTIM: TQuery;
    Label2: TLabel;
    Label3: TLabel;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ImageList2: TImageList;
    ToolButton4: TToolButton;
    ToolButton11: TToolButton;
    Partneri: TdxDBGridLayout;
    Bilje: TdxDBGridLayout;
    Evidencija: TdxDBGridLayout;
    Analiza2: TdxDBGridLayout;
    Analiza3: TdxDBGridLayout;
    Tini: TdxMemData;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxTreeListReportLink;
    Tinisection: TStringField;
    Tinigrid: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure dxDBGrid1HeaderMoved(Sender: TObject;
      Column: TdxTreeListColumn);
    procedure dxDBGrid1HideHeader(Sender: TObject;
      AColumn: TdxTreeListColumn);
    procedure dxDBGrid1ShowHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure Snimiti(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure dxDBGrid1GetLevelColor(Sender: TObject; ALevel: Integer;
      var AColor: TColor);
    procedure ToolButton7Click(Sender: TObject);
    procedure dxDBGrid1CustomDrawFooter(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ADone: Boolean);
    procedure dxDBGrid1CustomDrawFooterNode(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    procedure Synchronize;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    function  GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
  public
    { Public declarations }
    prikaz,gridje:string;
    procedure StartPregled(naziv:String;koji:integer);
    procedure Ponovi;
  end;

var
  FPrijaveGRID: TFPrijaveGRID;

implementation
Uses BazeModul, OdabirPrikazaDlg, Pricekaj, Main;
{$R *.DFM}

procedure TFPrijaveGRID.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then close;
end;

procedure TFPrijaveGRID.TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
Var column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFPrijaveGRID.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFPrijaveGRID.TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFPrijaveGRID.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to dxDBGrid1.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := dxDBGrid1.Columns[I].Caption;
    if dxDBGrid1.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := dxDBGrid1.Columns[I];
  end;
end;

procedure TFPrijaveGRID.dxDBGrid1HeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFPrijaveGRID.dxDBGrid1HideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFPrijaveGRID.dxDBGrid1ShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFPrijaveGRID.TLCustomizeIsVisibleToggleClick(Sender: TObject; const Text: String; State: TdxCheckBoxState);
var column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = cbsChecked;
end;

procedure TFPrijaveGRID.ToolButton1Click(Sender: TObject);
begin
  if TLCustomize.visible then TLCustomize.visible := false
  Else TLCustomize.visible:=true;
end;

procedure TFPrijaveGRID.ToolButton3Click(Sender: TObject);
begin
dxDBGrid1.FullCollapse;
end;

procedure TFPrijaveGRID.ToolButton2Click(Sender: TObject);
begin
dxDBGrid1.fullexpand;
end;

procedure TFPrijaveGRID.Snimiti(Sender: TObject);
var
  InputString: string;
begin
  if confirm('Da li želite snimiti trenutni prikaz?') then
  begin
    InputString:= InputBox('Upit', 'Naziv (opis) prikaza:', dxDBGrid1.iniSectionName);
    if inputstring <> '' then
    begin
      dxDBGrid1.iniSectionName := inputstring;
      dxDBGrid1.SaveToIniFile(dxDBGrid1.iniFileName);

      SaveDBGridFilterToFile(PathBIN+dxDBGrid1.iniSectionName+'.fil',dxDBGrid1.Filter);

      tini.Open;
      if FileExists(PathBIN+'PregledGrid.bin') then tini.LoadFromBinaryFile(PathBIN+'PregledGrid.bin');
      if not tini.locate('section',inputstring,[]) then
      begin
        tini.append;
        Tinigrid.Value := gridJe;
        Tinisection.value := inputstring;
        tini.post;
        tini.SaveToBinaryFile(PathBIN+'PregledGrid.bin');
      End;
    End;
  End;

  Ponovi;
end;

procedure TFPrijaveGRID.ToolButton5Click(Sender: TObject);
begin
  dxDBGrid1.ShowGrid := ToolButton5.Down;
end;

procedure TFPrijaveGRID.ToolButton8Click(Sender: TObject);
begin
   Save('htm', 'HTML File (*.htm; *.html)|*.htm', Label1.caption+'.htm', dxDBGrid1.SaveToHTML);
end;

procedure TFPrijaveGRID.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
//    InitialDir := 'C:\My Documents';
//    InitialDir := 'C:\';
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then AMethod(FileName, True);      //cbSaveAll.Checked
  end;
end;

procedure TFPrijaveGRID.ToolButton9Click(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', Label1.caption+'.xls', dxDBGrid1.SaveToXLS);
end;

procedure TFPrijaveGRID.dxDBGrid1GetLevelColor(Sender: TObject; ALevel: Integer; var AColor: TColor);
begin
    if ALevel < 9 then  AColor := GetColor(TdxDBGrid(Sender).GroupNodeColor, clYellow, ALevel, 8);
end;

function TFPrijaveGRID.GetColor(BColor, EColor: TColor; N, H: Integer): TColor;
begin
  Result := RGB(Trunc(GetRValue(BColor) + (GetRValue(EColor)-GetRValue(BColor)) * N / H),
    Trunc(GetGValue(BColor) + (GetGValue(EColor)-GetGValue(BColor)) * N / H), Trunc(GetBValue(BColor) + (GetBValue(EColor)-GetBValue(BColor)) * N / H));
end;

procedure TFPrijaveGRID.StartPregled(naziv:String;koji:integer);
Var p2,p1,s1:string;
begin
  prikaz := '';
  Label1.caption := naziv;
  sdxPanelText := 'na ovaj dio panela prevucite kolonu po kojoj želite grupiranje';

  s1:='';
  dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.add('Zavod za sjemenarstvo i rasadnièarstvo');
  Screen.Cursor := crHourGlass;

  Application.CreateForm(TFPricekaj,FPricekaj);
  FPricekaj.Show;
  FPricekaj.UpDate;
 try
  with MainForm do
  begin
  case koji of
       10: if FileExists(PathFRF+'Partneri.sql') then
           begin
             Query2.SQL.LoadFromFile(PathFRF+'Partneri.sql');
             Query2.open;
             dxDBGridLayoutList1.Items[0].AssignTo(dxDBGrid1);
             Query2.first;
           End else ShowMessage('Nedostaje datoteka Partneri.sql');

       11: if FileExists(PathFRF+'Biljne.sql') then
           begin
             Query3.SQL.LoadFromFile(PathFRF+'Biljne.sql');
             Query3.open;
             dxDBGridLayoutList1.Items[1].AssignTo(dxDBGrid1);
             Query3.first;
           End else ShowMessage('Nedostaje datoteka Biljne.sql');

       15: if FileExists(PathFRF+'Evidencija.sql') then
           begin
             Query9.SQL.LoadFromFile(PathFRF+'Evidencija.sql');
             case vpoljeObrade of
                     0: begin
                          Label1.caption := Label1.caption + ' kolona po prijavi';
                          p1 := 'KolicinaPrijava';
                          Query9.SQL.Add('WHERE (Zahtvocaridetail.JedMj = '+chr(39)+jmo+chr(39)+')');
                        End;
                     1: begin
                          Label1.caption := Label1.caption + ' kolona pregled prvi';
                          p1 := 'KolicinaPreg1';
                          Query9.SQL.Add('WHERE (Zahtvocaridetail.JedMjPerg1 = '+chr(39)+jmo+chr(39)+')');
                        End;
                     2: begin
                          Label1.caption := Label1.caption + ' kolona pregled drugi';
                          p1 := 'KolicinaPreg2';
                          Query9.SQL.Add('WHERE (Zahtvocaridetail.JedMjPreg2 = '+chr(39)+jmo+chr(39)+')');
                        End;
                     3: begin
                          Label1.caption := Label1.caption + ' kolona na uvjerenju';
                          p1 := 'KolUvjerenje';
                          Query9.SQL.Add('WHERE (Zahtvocaridetail.JedMjKolUvjer = '+chr(39)+jmo+chr(39)+')');
                        End;
                     4: begin
                          Label1.caption := Label1.caption + ' kolona broj stabala';
                          p1 := 'KolicinaStabala';
                          Query9.SQL.Add('WHERE (Zahtvocaridetail.JedMj = '+chr(39)+jmo+chr(39)+')');
                        End;
                     5: begin
                          Label1.caption := Label1.caption + ' kolona broj pupova';
                          p1 := 'KolicinaPupovaPreg1';
                          Query9.SQL.Add('WHERE (Zahtvocaridetail.JedMj = '+chr(39)+jmo+chr(39)+')');
                        End;
             End;

             dxDBGridLayoutList1.Items[3].AssignTo(dxDBGrid1);
             dxDBGrid1.SummaryGroups[0].endSummaryText := ' '+Jmo;
             dxDBGrid1.SummaryGroups[0].SummaryItems[0].SummaryField := p1;

             case vObradaJM of
                     0: p2 := '0.00';
                     1: p2 := '0';
                     2: p2 := '0';
                     3: p2 := '0.00';
             End;

             dxDBGrid1.SummaryGroups[0].SummaryItems[0].SummaryFormat := '    Ukupno = '+p2;
             Query9.SQL.Add('ORDER BY Podnositelj');
             Query9.open;
             Query9.first;
           End else ShowMessage('Nedostaje datoteka Evidencija.sql');

//______________________________________________________________________________________________________________________________
       16: if FileExists(PathFRF+'Evidencija.sql') then
           begin
             Query9.SQL.LoadFromFile(PathFRF+'Evidencija.sql');
             dxDBGridLayoutList1.Items[4].AssignTo(dxDBGrid1);
             Query9.SQL.Add('ORDER BY BiljnaVrsta');
             Query9.open;
             Query9.first;
           End else ShowMessage('Nedostaje datoteka Evidencija.sql');

       18: if FileExists(PathFRF+'Evidencija.sql') then
           begin
             Query9.SQL.LoadFromFile(PathFRF+'Evidencija.sql');
             Query9.SQL.Add('ORDER BY Podnositelj');
             Query9.Open;
             dxDBGridLayoutList1.Items[2].AssignTo(dxDBGrid1);
             Query9.First;
           End else ShowMessage('Nedostaje datoteka Evidencija.sql');
  End;
  end; // end od with
  gridJe:=dxDBGrid1.iniFileName;

  dxDBGrid1.iniFileName := pathbin+dxDBGrid1.iniFileName;
 finally
  Screen.Cursor := crDefault;
  FPricekaj.free;
 End;
 Ponovi;
End;

Procedure TFPrijaveGRID.Ponovi;
var dalje, i: Integer;
begin
  if FileExists(PathBIN+'PregledGrid.bin') then
  begin
    Application.CreateForm(TFOdabirPrikazaDlg,FOdabirPrikazaDlg);
    dalje:=FOdabirPrikazaDlg.showModal;

    Label3.caption := prikaz;
    dxDBGrid1.iniSectionName := prikaz;
    if prikaz <> 'Osnovni prikaz' then
    begin
        dxDBGrid1.LoadFromIniFile(dxDBGrid1.iniFileName);
        if FileExists(PathBIN+dxDBGrid1.iniSectionName+'.fil') then
            LoadDBGridFilterFromFile(PathBIN+dxDBGrid1.iniSectionName+'.fil',dxDBGrid1.Filter);
    End
    else
    begin
//        dxDBGrid1.Filter.Active:=True; dxDBGrid1.Filter.AutoDataSetFilter:=True; dxDBGrid1.Filter.CaseInsensitive:=False;
//        dxDBGrid1.Filter.DropDownCount:=30; dxDBGrid1.Filter.DropDownWidth:=0; dxDBGrid1.Filter.FilterStatus:=fsAuto; dxDBGrid1.Filter.MaxDropDownCount:=1000;
        for i:=0 to dxDBGrid1.GroupColumnCount-1 do
            dxDBGrid1.DeleteGroupColumn(0);
        dxDBGrid1.Filter.Clear;
    end;
  End;
  Label3.caption := prikaz;
  Synchronize;
  if dalje=mrOK then Show else Close;
end;

procedure TFPrijaveGRID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TFPrijaveGRID.ToolButton7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.OnlySelected := ToolButton15.Down;
  dxComponentPrinter1Link1.ReportTitle.text := InputBox('Upit', 'Naslov izvještaja', Label1.caption);
  if (Sender as TToolButton).Tag = 0 then dxComponentPrinter1.Preview(True,nil)
  Else dxComponentPrinter1.PageSetup(nil);
end;

procedure TFPrijaveGRID.dxDBGrid1CustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);

begin
    AColor := clWhite;
end;

procedure TFPrijaveGRID.dxDBGrid1CustomDrawFooterNode(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; AFooterIndex: Integer; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
begin
    AColor := clWhite;
end;

End.
