unit BazeModul;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DbiTypes, DBTables, Math, servisi, ExtCtrls, ImgList, Menus,
  Placemnt, DbPrgrss, AppEvent, RXShell, Wwintl, FR_Shape, FR_Desgn,
  FR_Class, FRD_Mngr, FR_DCtrl, FR_RRect, Wwtable, Wwdatsrc, lmdcompo,
  lmdclass, lmdnwgui, Registry, CoolDBUtils;

type
  TPodaci = class(TDataModule)
    Database2: TDatabase;
    TabIndex: TTable;
    TabSetUp: TTable;
    Croatian: TwwIntl;
    frReport1: TfrReport;
    frDesigner1: TfrDesigner;
    frShapeObject1: TfrShapeObject;
    frRoundRectObject1: TfrRoundRectObject;
    frDialogControls1: TfrDialogControls;
    Database1: TDatabase;
    Images: TImageList;
    TabIndex2: TTable;
    frCReport: TfrCompositeReport;
    frReport2: TfrReport;
    frReport3: TfrReport;
    procedure PodaciCreate(Sender: TObject);
  private
    varAdresaCl:String;
    StanjeSalda :Currency;
    procedure PopRaviBaze;
    procedure AutoUpgradeEXE(UpgradePATH:String);
    procedure AutoUpgradeDB;
    function  TrebaLiUpdateDB: Boolean;
 
  public
    NazivPrograma:String;
    SrchFld: TField;

    Procedure Otvoriindex(s:string);
    procedure OtvoriBazeMaster;
    function  PopuniNule(X:String;Koliko:Integer): String;
    Function DodajredniBroj:Integer;

    Procedure ProvDB(upit:Boolean);// Provjeri strukture baza sa DBS datotekom tj. obriši u registry KEY i izaði iz programa

  end;

  function Confirm(Msg: string): Boolean;

  Procedure Odabir(F:TformClass;Field:Tfield);

  Procedure OtvoriJu(baza,FilterJe,IndexJe:String);


  procedure ChkBool(Value: Boolean; const Msg: String);
  function  ExecWait(const Cmd: String): Integer;
  procedure PozivKontrole;
  function  IsInteger(const s: string): boolean;



const
  {Declare constants we're interested in}
  DigitChars = ['0'..'9'];
//  AlphaChars = ['A'..'Z','a'..'z'];
  AlphaChars = ['A'..'Z'];
  eKeyViol = 9729;
  eRequiredFieldMissing = 9732;
  eForeignKey = 9733;
  eDetailsExist = 9734;
  cInsert = 3;
  cEdit = 4;
  cDelete = 5;
  cOpen = 6;
  daaa  = 23834;    //True
  neee  = 31431;    //False
  cNeovlasteno = 'Pokušaj neovlaštenog pristupa !'+#13+#13+
                 'Niste ovlašteni da pristupite ovoj opciji.';

var
  Podaci: TPodaci;
  Voperater:Integer;
  drugi:Boolean;
  rad:Boolean;          //radnaverzija
  Zoran:String;
  izPopravka:Boolean;
  //ListaStatusa:TstringList;
  PutHDD, PutDisketa, PathZapisnika:String;
  PathFRF, PathBIN, PathUvjerenja, PathRjesenja:string;
  PutanjaPrograma, RadnaGodina:String;

  vObradaSjeme:Boolean;
  vObradaSjeme2:Integer;
  vObradaJM:Integer;
  vpoljeObrade:Integer;
  Osoba,Godina:String;
  jmo:String;
  KojaOTPR:Integer;


implementation

uses Main, StrUtils, PBZConsts, UnosTemplate, DateUtil, MakeDBStatus,
     fileutil, RekDlg, ZahtjevVocarstvo;

{$R *.DFM}

function Confirm(Msg: string): Boolean;
begin
  Result := MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

Procedure  Odabir(F:TformClass;Field:Tfield);
  var Dlg: TForm;
begin
  UnosStyle:=FsNormal;
  Application.CreateForm(F, Dlg);
  With DLG As TfUnosTemplate do
   try
   //Sifra:=Field.Value;
   Visible:=False;
   ShowModal;
   //IF ShowModal in [mrOk, mrYes] Then
   //Field.Value:=Sifra;
  finally
    Dlg.Free;
  end;
 end;


function TPodaci.PopuniNule(X:String;Koliko:Integer): String;
Var i:Integer;
Begin
  Result := '';
  if Length(X) = Koliko then Result := X
  Else Begin
    for i := 1 to (Koliko-Length(X)) do Result := result + '0';
    Result := Result + x;
  End;
End;

Procedure TPodaci.Otvoriindex(s:string);
begin                (* *)
 TabIndex.active:=false;
 TabIndex.IndexFieldNames := '';
 TabIndex.Filter := '';
 TabIndex.Filtered := False;
 TabIndex.Tablename:=s;
 TabIndex.active:=true;
end;


Procedure OtvoriJu(baza,FilterJe,IndexJe:String);
Begin
  Podaci.TabIndex.active:=false;
  Podaci.TabIndex.IndexFieldNames := '';
  Podaci.TabIndex.Filtered := False;
  Podaci.TabIndex.Tablename:=Baza;
  Podaci.TabIndex.IndexFieldNames := IndexJe;
  Podaci.TabIndex.Filter := FilterJe;
  Podaci.TabIndex.Filtered := True;
  Podaci.TabIndex.active:=true;
  Podaci.TabIndex.First;
End;


{The following code fragment will execute any program, DOS
or 32-bit, and wait until the called program has finished
running.
----------------------------------------------------------- }
procedure ChkBool(Value: Boolean; const Msg: String);
begin
  If (Value = false) then raise exception.create(Msg);
end;

{ Source: Dmitriy Anisimkov <ts@quadrat.omsk.su> }
function ExecWait(const Cmd: String): Integer;
var
  ProcessInfo: TProcessInformation;
  hProcess: THandle;
  ReturnCode: Integer;
  StartupInfo: TStartupInfo;
begin
  FillChar(StartupInfo, SizeOf(StartupInfo), 0);
  ChkBool(CreateProcess(nil, PChar(Cmd), nil, nil, False,
          CREATE_DEFAULT_ERROR_MODE + NORMAL_PRIORITY_CLASS,
          NIL, NIL, StartupInfo, ProcessInfo),
          'Error during CreateProcess');
  hProcess := ProcessInfo.hProcess; // save the process handle
  //Close the thread handle as soon as it is no longer needed
  CloseHandle(ProcessInfo.hThread);
  ReturnCode := WaitForSingleObject(hProcess, INFINITE);
  ChkBool(dword(ReturnCode) <> WAIT_FAILED, 'Error in WaitForSingleObject');
  // The process terminated
  ChkBool(GetExitCodeProcess(hProcess, dword(Result)), 'Error in GetExitCodeProcess');
  // Close the process handle as soon as it is no longer needed
  ChkBool(CloseHandle(hProcess), 'Error in process Close Handle');
end;

procedure TPodaci.OtvoriBazeMaster;
Begin
 // otvori baze koje ti trebaju
 podaci.TabSetUp.open;

End;

procedure TPodaci.PopRaviBaze;
begin
  izPopravka := True;
  Try
      Application.CreateForm(TFMakeDBStatus,FMakeDBStatus);
      FMakeDBStatus.ShowModal;
  Finally
    Screen.Cursor := crDefault;
  end;
End;

procedure PozivKontrole;
Begin
  ExecWait(Format('%s -R1 "/A%s" "/P%s"',[ExtractFilePath(Application.ExeName)+'Pdxrbld.exe',
  Podaci.Database1.Aliasname,chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73)]))// < 0  // errors have been detected ..
End;

procedure TPodaci.PodaciCreate(Sender: TObject);
Var i:Integer;
    daKontr:Boolean;
    a:String;
begin
 frLocale.LoadDll('FR_Eng.dll');       // load english resources

 drugi:= false;
 for I := 1 to ParamCount do if ParamStr(i) = 'DRUGI' then drugi := True;

 a:='';
 a:= ParamStr(1);
 try
   i := strtoint(a);
 except
   on E: Exception do begin
      MessageDlg('Program je potrebno pozvati sa parametrom radne godine!  (npr. 2000)'+#13+#13+
                 'Takoðer je potrebno da postoji direktoriji  BAZE+radna godina (u kojem se nalaze baze).',mtWarning,[mbOK],0);
      Application.Terminate;
   End;
 end;

 // or (not FileExists(ExtractFilePath(ParamStr(0))+'BAZE'+a+'\setup.db'))
 if not drugi then
  if (a = '') or (i<2000) or (not FileExists(ExtractFilePath(ParamStr(0))+'BAZE'+a+'\setup.db')) then begin
     MessageDlg('Program je potrebno pozvati sa parametrom radne godine!  (npr. 2000)'+#13+#13+
                'Takoðer je potrebno da postoji direktoriji  BAZE+radna godina (u kojem se nalaze baze).',mtWarning,[mbOK],0);
     Application.Terminate;
  end;

 PutanjaPrograma := ExtractFilePath(Application.ExeName);
 Croatian.IniFileName := PutanjaPrograma+'Voc_v1.ini';
 Zoran := chr(90)+chr(77)+chr(77)+chr(79)+chr(75)+chr(73);

 Podaci.Database1.Close;
 Podaci.Database2.Close;

 if drugi then begin
   if not session.IsAlias('VOC'+a) then begin
     MessageDlg('U BDE potrebno je kreirati ALIAS npr. VOC'+a+'   PATH  \\server\baze'+a,mtWarning,[mbOK],0);
     Application.Terminate;
   End
 end
 else if not session.IsAlias('VOC'+a) then begin
        session.ConfigMode := cmAll;
        session.AddStandardAlias('Voc'+a, ExtractFilePath(ParamStr(0))+'BAZE'+a, 'PARADOX');
        session.SaveConfigFile;
      End;
 session.addpassword(ZORAN);

 Podaci.Database1.AliasName := 'Voc'+a;
 Podaci.Database2.AliasName := 'Voc'+a;
 //_______________________________Sredit
 AutoUpgradeEXE('');

 //----------------------
 if not drugi and FileExists(ExtractFilePath(Application.ExeName)+'bazeDEf.txt') and
  not Application.Terminated then AutoUpgradeDB;
 //----------------------

 Podaci.Database1.Open;
 Podaci.Database2.Open;

 MainForm.Caption:= 'Voc '+a+'   ';
 RadnaGodina := a;

 for I := 1 to ParamCount do if ParamStr(i) = 'PRIVATEDIR' then Session.PrivateDir := ExtractFilePath(ParamStr(0))+'TMP\';

 if ParamStr(2) = ZORAN then Rad := True
 Else Rad := False;

 for I := 1 to ParamCount do if ParamStr(i) = 'KONTROLA' then dakontr := True;
 //0 = glavni

 OtvoriBazeMaster;
 izPopravka := False;

 PutHDD        := Podaci.TabSetUp.FieldByName('PathHDD').AsString;
 PutDisketa    := Podaci.TabSetUp.FieldByName('PathFloppy').AsString;
 PathFRF       := Podaci.TabSetUp.FieldByName('ReportPATH').AsString;
 PathBIN       := Podaci.TabSetUp.FieldByName('INIpath').AsString;
 PathUvjerenja := Podaci.TabSetUp.FieldByName('PathUvjerenja').AsString+a+'\';
 PathRjesenja  := Podaci.TabSetUp.FieldByName('PathRjesenja').AsString+a+'\';
 PathZapisnika := Podaci.TabSetUp.FieldByName('PathZapisnici').AsString+a+'\';
end;

Function SveBrojevi(Txt:String):Boolean;
Begin
   result := (txt[1] in DigitChars) and (txt[length(txt)] in DigitChars);
End;

function IsInteger(const s: string): boolean;
var
 E: Integer;
 NotUsed: integer;
begin
  Val(S, NotUsed, E);
  result := E = 0;
end;

Function TPodaci.DodajredniBroj:Integer;
Begin
  TabSetUp.edit;
  TabSetUp.fieldByName('RedniBroj').value := Podaci.TabSetUp.fieldByName('RedniBroj').value +1;
  TabSetUp.Post;
  result := TabSetUp.fieldByName('RedniBroj').asInteger;
End;

//---------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------  SISTEMSKI DODACI
//---------------------------------------------------------------------------------------------------------

procedure TPodaci.AutoUpgradeEXE(UpgradePATH:String);
begin
end;
// *** end AutoUpgradeEXE ********************************************

procedure TPodaci.AutoUpgradeDB;
begin
end;    // *** end AutoUpgradeDB ********************************************

function TPodaci.TrebaLiUpdateDB: Boolean;
begin
end; // *** end TrebaLiUpdateDB ********************************************

Procedure TPodaci.ProvDB(upit:Boolean);// Provjeri strukture baza sa DBS datotekom tj. obriši u registry KEY i izaði iz programa
begin
End;

end.
