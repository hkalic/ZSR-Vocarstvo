unit UnosNazSadMat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, FR_PTabl, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask;

type
  TFUnosNazSadMat = class(TFUnosTemplate)
    Table1: TTable;
    Table1Sifra: TAutoIncField;
    Table1Naziv: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Table1Zap5: TBooleanField;
    Table1Zap6: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Table1Voce: TBooleanField;
    Table1Loza: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosNazSadMat: TFUnosNazSadMat;

implementation

{$R *.DFM}

end.
