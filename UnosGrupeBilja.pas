unit UnosGrupeBilja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, FR_PTabl, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask;

type
  TFUnosGrupeBilja = class(TFUnosTemplate)
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
  FUnosGrupeBilja: TFUnosGrupeBilja;

implementation

{$R *.DFM}

end.
