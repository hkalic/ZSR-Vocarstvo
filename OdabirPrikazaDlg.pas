unit OdabirPrikazaDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, dxmdaset;

type
  TFOdabirPrikazaDlg = class(TForm)
    wwDBGrid1: TwwDBGrid;
    wwDataSource1: TwwDataSource;
    Button1: TButton;
    Tini: TdxMemData;
    Tinisection: TStringField;
    Tinigrid: TStringField;
    Button2: TButton;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure TiniFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure wwDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOdabirPrikazaDlg: TFOdabirPrikazaDlg;

implementation

Uses BazeModul,PrijaveGrid;
{$R *.DFM}

procedure TFOdabirPrikazaDlg.FormCreate(Sender: TObject);
begin
  label1.caption := FPrijaveGRID.Label1.caption;
  Tini.Open;
  Tini.LoadFromBinaryFile(PathBIN+'PregledGrid.bin');
  if tini.RecordCount = 0 then tini.close;
  Button1.enabled := tini.active;
end;

procedure TFOdabirPrikazaDlg.Button1Click(Sender: TObject);
begin
  ModalResult:=mrOk;
  FPrijaveGRID.prikaz := Tini.fieldbyName('section').asstring;
end;

procedure TFOdabirPrikazaDlg.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  Tini.close;
  Action:=caFree;
end;

procedure TFOdabirPrikazaDlg.Button2Click(Sender: TObject);
begin
    ModalResult:=mrOk;
    FPrijaveGRID.prikaz := 'Osnovni prikaz';
end;

procedure TFOdabirPrikazaDlg.TiniFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
    Accept := DataSet['grid'] = FPrijaveGRID.gridJe;
end;

procedure TFOdabirPrikazaDlg.wwDBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=27 then ModalResult:=mrCancel;
end;

end.
