unit UnosVresteKlonova;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, StdCtrls, Mask, DBCtrls, FR_PTabl, Db, DBTables, RxQuery,
  Buttons, Grids, DBGrids, RXDBCtrl, ComCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls;

type
  TFUnosVresteKlonova = class(TFUnosTemplate)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    TBaza: TTable;
    TBazaSifra: TAutoIncField;
    TBazaNaziv: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosVresteKlonova: TFUnosVresteKlonova;

implementation

{$R *.DFM}

end.
