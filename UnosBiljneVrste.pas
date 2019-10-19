unit UnosBiljneVrste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, ImgList, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask, FR_PTabl;

type
  TFUnosBiljneVrste = class(TFUnosTemplate)
    Table1: TTable;
    Table1Naziv: TStringField;
    Table1Latinski: TStringField;
    Table1Sifra: TAutoIncField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    TGrupaBilja: TTable;
    DVrsta: TDataSource;
    Table1BiljnaGrupa: TIntegerField;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Table1NazivEngleski: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosBiljneVrste: TFUnosBiljneVrste;

implementation

{$R *.DFM}

procedure TFUnosBiljneVrste.FormCreate(Sender: TObject);
begin
  inherited;
  TGrupaBilja.open;
end;

end.
