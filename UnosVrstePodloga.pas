unit UnosVrstePodloga;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, FR_PTabl, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask;

type
  TFUnosVrstePodloga = class(TFUnosTemplate)
    TBaza: TTable;
    TBazaSifra: TAutoIncField;
    TBazaNaziv: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosVrstePodloga: TFUnosVrstePodloga;

implementation

{$R *.DFM}

end.
