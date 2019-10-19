unit MakeDBStatus;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, FileCtrl, Gauges, ExtCtrls, DB,
  DBTables, ComCtrls;


type
  TFMakeDBStatus = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Gauge1: TProgressBar;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Btnok: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    Pozradnici:Integer;
  public
    { Public declarations }
  end;



var
  FMakeDBStatus: TFMakeDBStatus;

implementation

{$R *.DFM}




uses MakeDB,  BazeModul, PBZConsts, BDEUtils;



function ShowProgress(const iPosition,iMax: integer; const sTable: string): boolean; far;
begin
  with FMakeDBStatus do begin
    if iPosition = 0 then begin
      Tag := 0;
      Gauge1.Max := iMax
      end
    else begin
      Label1.Caption := IntToStr(iPosition)+' od : '+IntToStr(iMax);
      Label2.Caption := LowerCase(sTable);
      Gauge1.Position := iPosition;
    end;
    Application.ProcessMessages;
    result := Tag <> -1;
    if not result then begin
      Screen.Cursor := crDefault;
      ShowMessage(Sprekid);
    end;
  end;
end;

procedure TFMakeDBStatus.FormCreate(Sender: TObject);
begin
// if not izPopravka then PozRadnici  := Podaci.tabradnici.fieldByName('Sifra').Value;
 Podaci.Database1.CloseDatasets;
 Podaci.Database2.CloseDatasets;
end;

procedure TFMakeDBStatus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=CaFree;
end;

procedure TFMakeDBStatus.FormActivate(Sender: TObject);
Var e:Integer;
    Lista:TstringList;
begin

  Screen.Cursor := crHourglass;
  try
    Label3.Caption := Podaci.Database1.Aliasname;
    Label8.Caption := GetAliasPath(Podaci.Database1.Aliasname);
    MakeAllTables(Podaci.Database1,ShowProgress);
    Lista := TStringList.Create;
    try
      Session.GetTableNames(Podaci.Database1.AliasName, '*.db',False, False, Lista);
      Lista.SaveToFile('bazeDEf.txt');
    finally
      Lista.Free;
    end;
  finally

  
    Screen.Cursor := crDefault;
  end;
  label9.Visible := True;
  label4.Visible := false;
  label5.Visible := false;
  label1.Visible := false;
  label2.Visible := false;
  label10.Visible := false;


  if not izPopravka then begin
      Podaci.Database1.Open;
      Podaci.Database2.Open;
      Podaci.OtvoriBazeMaster;
  End
  Else begin
         Podaci.Database1.Open;
         Podaci.Database2.Open;
         Podaci.OtvoriBazeMaster;
       End;

  BtnOk.Visible := True;
  gauge1.Visible := False;
end;








end.
