unit MsgUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls;

type
  TMsgform = class( TForm )
    Panel1:          TPanel;
    Panel2:          TPanel;
    CancelBut:       TButton;
    RichEdit1:       TRichEdit;
    Label2: TLabel;
    procedure CancelButClick( Sender: TObject );
    procedure FormCreate( Sender: TObject );

  public
    { Public declarations }
    FormInitialWidth: Integer;
    ProgressBar2: TProgressBar;
  end;

var
  Msgform: TMsgform;

implementation

uses main;

{$R *.DFM}

procedure TMsgform.CancelButClick( Sender: TObject );
begin
   if (MainForm.ZipMaster1.ZipBusy or MainForm.ZipMaster1.UnzBusy) then
      MainForm.ZipMaster1.Cancel := True
   else
      Hide; { nothing to cancel - assume user wants to close msg window }
end;

procedure TMsgform.FormCreate( Sender: TObject );
begin
   FormInitialWidth := MsgForm.Width;
end;

end.

