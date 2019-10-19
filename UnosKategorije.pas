unit UnosKategorije;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, ImgList, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask, FR_PTabl;

type
  TFUnosKategorije = class(TFUnosTemplate)
    Table1: TTable;
    Table1Sifra: TAutoIncField;
    Table1Naziv: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosKategorije: TFUnosKategorije;

implementation

{$R *.DFM}

end.
