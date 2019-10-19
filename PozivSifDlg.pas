unit PozivSifDlg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFPozivSifDlg = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPozivSifDlg: TFPozivSifDlg;

implementation
uses BazeModul, AppUtils, UnosTemplate,
     UnosBiljneVrste,
     UnosKategorije, UnosPartneri, UnosSorte,
     UnosVresteKlonova, UnosVrstePodloga,
     UnosRasadnici, UnosNazSadMat;



{$R *.DFM}

procedure TFPozivSifDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
end;

procedure TFPozivSifDlg.Button7Click(Sender: TObject);
begin
Close;
end;

procedure TFPozivSifDlg.Button1Click(Sender: TObject);
begin
 Case (Sender as TButton).Tag of
         1: Odabir(TFUnosPartneri,nil);
         2: Odabir(TFUnosBiljneVrste,nil);
         3: Odabir(TFUnosSorte,nil);
         4: Odabir(TFUnosKategorije,nil);

         5: Odabir(TFUnosRasadnici,nil);
         6: Odabir(TFUnosNazSadMat,nil);

         7: Odabir(TFUnosVresteKlonova,nil);
         8: Odabir(TFUnosVrstePodloga,nil);



 End;
 Close;

end;

end.
