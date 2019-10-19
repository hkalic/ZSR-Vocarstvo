unit UnosRasadnici;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, FR_PTabl, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask;

type
  TFUnosRasadnici = class(TFUnosTemplate)
    Table1: TTable;
    Table1Sifra: TAutoIncField;
    Table1Naziv: TStringField;
    Table1Mjseto: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosRasadnici: TFUnosRasadnici;

implementation

{$R *.DFM}

end.
