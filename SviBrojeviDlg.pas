unit SviBrojeviDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, DBTables, Wwtable;

type
  TFSviBrojeviDlg = class(TForm)
    wwDBGrid1: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    qRepro: TQuery;
    dsRepro: TDataSource;
    qReproPraviBrojUvjerenja: TStringField;
    qReproDatum: TDateField;
    qReproDodatak: TStringField;
    dsNotRepro: TDataSource;
    qNotRepro: TQuery;
    StringField1: TStringField;
    DateField1: TDateField;
    StringField2: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSviBrojeviDlg: TFSviBrojeviDlg;

implementation
Uses BazeModul, StrUtils;
{$R *.DFM}

procedure TFSviBrojeviDlg.FormCreate(Sender: TObject);
begin
    qRepro.Open;
    qNotRepro.Open;
end;

procedure TFSviBrojeviDlg.wwDBGrid1DblClick(Sender: TObject);
VAr a:Integer;
    s,uvjerenje:String;
begin
    if (Sender as TwwDBGrid).Tag=1 then
        uvjerenje:=qReproPraviBrojUvjerenja.AsString
    else uvjerenje:=StringField1.AsString;

    a:=Pos('/',uvjerenje);  // NPos('/',uvjerenje,1); stara rutina 
    s:=copy(uvjerenje,1,a-1);

  if not FileExists(PathUvjerenja+s+'.frp') then
  begin
    MessageDlg('Ne postoji snimljeno uvjerenje br. '+uvjerenje, mtWarning, [mbOK], 0);
    Exit;
  End;

  Podaci.frReport1.LoadPreparedReport(PathUvjerenja+s+'.frp');
  Podaci.frReport1.ShowPreparedReport;

end;

end.
