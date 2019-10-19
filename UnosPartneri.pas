unit UnosPartneri;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UnosTemplate, ImgList, Db, DBTables, RxQuery, StdCtrls, Buttons, Grids,
  DBGrids, RXDBCtrl, ComCtrls, DBCtrls, ToolWin, RxLookup, RXCtrls,
  ExtCtrls, Mask, FR_PTabl;

type
  TFUnosPartneri = class(TFUnosTemplate)
    Table1: TTable;
    Table1Sifra: TAutoIncField;
    Table1Naziv: TStringField;
    Table1Mb: TStringField;
    Table1Ptt: TIntegerField;
    Table1Mjesto: TStringField;
    Table1Ulica: TStringField;
    Table1Telefon: TStringField;
    Table1Fax: TStringField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Table1Napomena: TStringField;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Table1UpisniBroj: TStringField;
    Table1DatumUpisa: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUnosPartneri: TFUnosPartneri;

implementation

{$R *.DFM}

end.
