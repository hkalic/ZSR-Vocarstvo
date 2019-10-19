unit ZapisnikDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TKojiZapDlg = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    rZap5: TRadioButton;
    rZap6: TRadioButton;
    rSve: TRadioButton;
    Panel2: TPanel;
    RadioLeft: TRadioButton;
    RadioRight: TRadioButton;
    Edit1: TEdit;
    Snimi: TCheckBox;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure rZap5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KojiZapDlg: TKojiZapDlg;

implementation

uses ZahtjevVocarstvo;

{$R *.DFM}

procedure TKojiZapDlg.rZap5Click(Sender: TObject);
begin
    if (Sender as TRadioButton).Checked then
    begin
        if (Sender as TRadioButton)=rZap5 then
        begin
            Panel3.Visible:=False;
            if not(RadioLeft.Checked or RadioRight.Checked) then RadioLeft.Checked:=True;
            RadioLeft.Caption:='Repro voæe';
            RadioRight.Caption:='Repro loza';
            Panel2.Visible:=True;
        end
        else
        if (Sender as TRadioButton)=rZap6 then
        begin
            Panel3.Visible:=True;
            if not(RadioLeft.Checked or RadioRight.Checked) then RadioLeft.Checked:=True;
            RadioLeft.Caption:='      Voæe';
            RadioRight.Caption:='Loza';
            Panel2.Visible:=True;
        end;
        if (Sender as TRadioButton)=rSve then
        begin
            RadioLeft.Checked:=False;
            RadioRight.Checked:=False;
            Panel2.Visible:=False;
            Panel3.Visible:=False;
        end;
    end;
end;

procedure TKojiZapDlg.FormShow(Sender: TObject);
begin
    Edit1.Text:=IntToStr(FZahtjevVocarstvo.TZahtMaster.FieldByName('Sifra').Value);
end;

procedure TKojiZapDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    if rZap5.Checked then
        if RadioLeft.Checked then Edit1.Text:=Edit1.Text+'-5-V'
        else Edit1.Text:=Edit1.Text+'-5-L'
    else
    if rZap6.Checked then
    begin
        if RadioButton1.Checked then
            Edit1.Text:=Edit1.Text+'-6-1'
        else
            Edit1.Text:=Edit1.Text+'-6-2';
        if RadioLeft.Checked then
            Edit1.Text:=Edit1.Text+'V'
        else
            Edit1.Text:=Edit1.Text+'L';
    end
    else Edit1.Text:=Edit1.Text+'-5i6';
//    ShowMessage(Edit1.Text);
end;

end.
