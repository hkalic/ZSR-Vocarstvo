unit PostavkeDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, wwdbdatetimepicker, StdCtrls, ExtCtrls, DBCtrls, Mask, DBTables,
  ComCtrls, Buttons;

type
  TFPostavkeDlg = class(TForm)
    DataSource1: TDataSource;
    Panel2: TPanel;
    Btnizlaz: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    Bevel4: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Bevel5: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    Label151: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    DBEdit8: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    procedure Kdown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnizlazClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPostavkeDlg: TFPostavkeDlg;

implementation
Uses BazeModul, MAin, ZahtjevVocarstvo;
{$R *.DFM}


procedure TFPostavkeDlg.Kdown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
Case Key of
      VK_Up:
           begin
             selectnext(sender as twincontrol,False,true);
             key:=0;
           End;
      VK_Down, VK_return:
           begin
             selectnext(sender as twincontrol,True,true);
             key:=0;
           End;
End;
end;

procedure TFPostavkeDlg.BtnizlazClick(Sender: TObject);
begin
  Close;
end;

procedure TFPostavkeDlg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then Close;
end;

procedure TFPostavkeDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DataSource1.State in DsEditModes then
  if confirm('Da li želite snimiti izmjene ?') Then
  begin
    DataSource1.dataSet.Post;
    FZahtjevVocarstvo.SrediIni;
  end
  Else DataSource1.dataSet.Cancel;
  Action := caFree;
end;

procedure TFPostavkeDlg.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet2;
end;

end.
