unit UnosSorte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, ImgList, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask, FR_PTabl;

type
  TFUnosSorte = class(TFUnosTemplate)
    Table1: TTable;
    Table1Sifra: TAutoIncField;
    Table1Naziv: TStringField;
    Table1SifraBiljnaVrsta: TIntegerField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Tvrsta: TTable;
    DVrsta: TDataSource;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosSorte: TFUnosSorte;

implementation

{$R *.DFM}

procedure TFUnosSorte.FormCreate(Sender: TObject);
begin
  inherited;
  Tvrsta.open;
end;

end.
