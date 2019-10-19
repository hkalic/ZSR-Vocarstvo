unit Makedb;

{Table Scanner V2.02 [by demian@bhnet.com.br]}
{Code generated on nedjelja, svibanj 9, 2004 at 04:09 PM}

{$T-}

Interface

Uses Classes,SysUtils,Forms,Controls,DB,DBTables,DBIProcs,DBITypes,DBIErrs;

Type
  TCBInfo = function(const iPosition,iMax: integer; const sTable: string): boolean;

procedure MakeAllTables(dbDatabase: TDatabase; CBInfo: TCBInfo);

Implementation

Type
  Stored_Tables = (Biljnavrstavoc_db,Brojeviuvjerenja_db,
                   Grupebiljavoc_db,Kategorijavoc_db,Nazivsadmatvoc_db,
                   Partnerivoc_db,Rasadnicivoc_db,Setup_db,Sortavoc_db,
                   Uvjerenje_db,Vrsteklonova_db,Vrstepodloga_db,
                   Zahtvocaridetail_db,Zahtvocarimaster_db);
  TFieldsDesc   = array[0..MaxInt div SizeOf(FLDDesc)-1] of FLDDesc;
  TIndexesDesc  = array[0..MaxInt div SizeOf(IDXDesc)-1] of IDXDesc;
  TIndexesOp    = array[0..MaxInt div SizeOf(CROpType)-1] of CROpType;
  
Var
  szDirectory : DBIPATH;
  LangDrv     : string;
  OptParams   : FLDDesc;
  TableDesc   : pCRTblDesc;
  iField      : integer;
  FieldsDesc  : ^TFieldsDesc;
  iIndex      : integer;
  IndexesDesc : ^TIndexesDesc;
  IndexesOp   : ^TIndexesOp;
  
{______________________________________________________________________________}
function AnsiName(const NativeStr: PChar): string;
begin
  NativeToAnsi(Session.Locale,NativeStr,result);
end;

{______________________________________________________________________________}
procedure DeleteFiles(sMask: string);
var
  SearchRec: TSearchRec;
begin
  if FindFirst(sMask,faAnyFile,SearchRec) = 0 then begin
    sMask := ExtractFilePath(sMask);
    SysUtils.DeleteFile(sMask+SearchRec.Name);
    while FindNext(SearchRec) = 0 do
      SysUtils.DeleteFile(sMask+SearchRec.Name);
    FindClose(SearchRec);
  end;
end;

{______________________________________________________________________________}
procedure DeleteAuxFiles;
var
  sFileName: string;
  f: file of byte;
  b: byte;
begin
  sFileName := AnsiName(szDirectory)+AnsiName(TableDesc^.szTblName);
  if StrComp(TableDesc^.szTblType,szParadox) = 0 then begin
    SysUtils.DeleteFile(ChangeFileExt(sFileName,'.PX'));
    SysUtils.DeleteFile(ChangeFileExt(sFileName,'.VAL'));
    DeleteFiles(ChangeFileExt(sFileName,'.X*'));
    DeleteFiles(ChangeFileExt(sFileName,'.Y*'));
    end
  else begin
    assignFile(f,ChangeFileExt(sFileName,'.DBF'));
    reset(f);
    try
      seek(f,28);
      b := 0;
      write(f,b);
      SysUtils.DeleteFile(ChangeFileExt(sFileName,'.MDX'));
    finally
      closefile(f);
    end;
  end;
end;

{______________________________________________________________________________}
procedure DefField(const sName: string;
                   const iAFldType,iASubType,iAUnits1,iAUnits2: integer);
begin
  with FieldsDesc^[iField] do begin
    StrPCopy(szName,sName);
    iFldNum  := iField;
    iFldType := iAFldType;
    iSubType := iASubType;
    iUnits1  := iAUnits1;
    iUnits2  := iAUnits2;
  end;
  Inc(iField);
end;

{______________________________________________________________________________}
procedure DefIndex(const sName,sTagName,sFormat,sKeyExp,sKeyCond: string;
                   const aFields: array of integer;
                   const iAIndexID,iAFldsInKey,iAKeyLen,
                         iAKeyExptype,iABlockSize,iARestrNum,iIDXFlags: integer);
var
  i: integer;
begin
  IndexesOp^[iIndex] := crAdd;
  with IndexesDesc^[iIndex] do begin
    StrPCopy(szName,sName);
    iIndexId := iAIndexId;
    StrPCopy(szTagName,sTagName);
    StrPCopy(szFormat,sFormat);
    StrPCopy(szKeyExp,sKeyExp);
    StrPCopy(szKeyCond,sKeyCond);
    iFldsInkey  := iAFldsInkey;
    iKeyLen     := iAKeyLen;
    iKeyExpType := iAKeyExpType;
    iBlocksize  := iABlocksize;
    iRestrNum   := iARestrNum;
    bPrimary         := (iIDXFlags and (1 shl 1)) <> 0;
    bUnique          := (iIDXFlags and (1 shl 2)) <> 0;
    bDescending      := (iIDXFlags and (1 shl 3)) <> 0;
    bMaintained      := (iIDXFlags and (1 shl 4)) <> 0;
    bSubset          := (iIDXFlags and (1 shl 5)) <> 0;
    bExpIdx          := (iIDXFlags and (1 shl 6)) <> 0;
    bCaseInsensitive := (iIDXFlags and (1 shl 7)) <> 0;
    bOutofDate       := false;
    FillChar(aiKeyFld,SizeOf(aiKeyFld),#0);
    for i := Low(aFields) to High(aFields) do
      aiKeyFld[i] := aFields[i];
  end;
  Inc(iIndex);
end;

{______________________________________________________________________________}
procedure DefTable(const sName,sType,sPassword,sLangDriver: string;
                   const iAFldCount,iAIDXCount,iAValChkCount,iARintCount: integer);
begin
  {Get memory - Table}
  TableDesc := AllocMem(SizeOf(CRTblDesc));
  {Get memory - Fields}
  FieldsDesc := AllocMem(iAFldCount*SizeOf(FLDDesc));
  {Get memory - Indexes}
  IndexesDesc := AllocMem(iAIDXCount*SizeOf(IDXDesc));
  IndexesOp := AllocMem(iAIDXCount*SizeOf(CROpType));
  {Fill records}
  with TableDesc^ do begin
    {Fill record - Table}
    AnsiToNative(Session.Locale,sName,szTblName,length(sName));
    StrPCopy(szTblType,sType);
    bProtected := (sPassword <> '');
    if bProtected then begin
      StrPCopy(szPassword,sPassword);
      Session.AddPassword(sPassword);
    end;
    bPack := true;
    {Fill record - Language Driver}
    iOptParams := 1;
    FillChar(OptParams,SizeOf(FLDDESC),#0);
    with OptParams do begin
      StrPCopy(szName,szCFGDRVLANGDRIVER);
      iOffset := 0;
      iLen := Length(sLangDriver)+1;
    end;
    pFldOptParams := @OptParams;
    LangDrv := sLangDriver;
    pOptData := @LangDrv[1];
    {Fill record - Fields}
    iFldCount := iAFldCount;
    pFldDesc := @FieldsDesc^;
    {Fill record - Indexes}
    iIDXCount := iAIDXCount;
    pIDXDesc := @IndexesDesc^;
    pecrIDXOp := @IndexesOp^;
  end;
end;

{______________________________________________________________________________}
procedure StoredBiljnavrstavoc_db;
begin
  DefTable('BiljnaVrstaVOC.DB','PARADOX','','slovene',5,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,45,0);
  DefField('Latinski',fldZSTRING,0,50,0);
  DefField('BiljnaGrupa',fldINT32,0,1,0);
  DefField('NazivEngleski',fldZSTRING,0,45,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,45,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredBrojeviuvjerenja_db;
begin
  DefTable('BrojeviUvjerenja.DB','PARADOX','','slovene',5,3,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('PraviBrojUvjerenja',fldZSTRING,0,10,0);
  DefField('Datum',fldDATE,0,1,0);
  DefField('SifraRbr',fldINT32,0,1,0);
  DefField('Dodatak',fldZSTRING,0,5,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxPraviBrojUv','','','','',[2],257,1,10,0,2048,2,144);
  DefIndex('IxSifRbr','','','','',[4],256,1,4,0,2048,3,144);
end;

{______________________________________________________________________________}
procedure StoredGrupebiljavoc_db;
begin
  DefTable('GrupeBiljaVOC.DB','PARADOX','','slovene',2,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,30,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredKategorijavoc_db;
begin
  DefTable('KategorijaVOC.DB','PARADOX','','slovene',2,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,30,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredNazivsadmatvoc_db;
begin
  DefTable('NazivSadMatVOC.DB','PARADOX','','slovene',6,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,35,0);
  DefField('Zap5',fldBOOL,0,1,0);
  DefField('Zap6',fldBOOL,0,1,0);
  DefField('Voce',fldBOOL,0,1,0);
  DefField('Loza',fldBOOL,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,35,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredPartnerivoc_db;
begin
  DefTable('PartneriVOC.DB','PARADOX','','slovene',11,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,65,0);
  DefField('Mb',fldZSTRING,0,13,0);
  DefField('Ptt',fldINT32,0,1,0);
  DefField('Mjesto',fldZSTRING,0,20,0);
  DefField('Ulica',fldZSTRING,0,50,0);
  DefField('Telefon',fldZSTRING,0,20,0);
  DefField('Fax',fldZSTRING,0,20,0);
  DefField('Napomena',fldZSTRING,0,40,0);
  DefField('UpisniBroj',fldZSTRING,0,10,0);
  DefField('DatumUpisa',fldDATE,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,65,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredRasadnicivoc_db;
begin
  DefTable('RasadniciVOC.DB','PARADOX','','slovene',3,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,60,0);
  DefField('Mjseto',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,60,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredSetup_db;
begin
  DefTable('SetUp.DB','PARADOX','','DBWINUS0',13,0,0,0);
  DefField('Naziv1',fldZSTRING,0,40,0);
  DefField('Naziv2',fldZSTRING,0,40,0);
  DefField('Adresa1',fldZSTRING,0,40,0);
  DefField('Adresa2',fldZSTRING,0,40,0);
  DefField('Telefon',fldZSTRING,0,20,0);
  DefField('PathHDD',fldZSTRING,0,40,0);
  DefField('PathFloppy',fldZSTRING,0,5,0);
  DefField('ZadnjiputSnimano',fldDATE,0,1,0);
  DefField('Reportpath',fldZSTRING,0,40,0);
  DefField('INIpath',fldZSTRING,0,40,0);
  DefField('PathUvjerenja',fldZSTRING,0,40,0);
  DefField('PathZapisnici',fldZSTRING,0,40,0);
  DefField('PathRjesenja',fldZSTRING,0,40,0);
end;

{______________________________________________________________________________}
procedure StoredSortavoc_db;
begin
  DefTable('SortaVOC.DB','PARADOX','','slovene',3,3,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,35,0);
  DefField('SifraBiljnaVrsta',fldINT32,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,35,0,2048,2,144);
  DefIndex('SifraBiljnaVrsta','','','','',[3],3,1,4,0,2048,3,16);
end;

{______________________________________________________________________________}
procedure StoredUvjerenje_db;
begin
  DefTable('Uvjerenje.DB','PARADOX','','slovene',10,1,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Dodatak',fldZSTRING,0,2,0);
  DefField('DatumPodnosenja',fldDATE,0,1,0);
  DefField('DatumIzdavUvjerenja',fldDATE,0,1,0);
  DefField('SifraPodnositeljZaht',fldINT32,0,1,0);
  DefField('Domaca',fldBOOL,0,1,0);
  DefField('Prebaceno',fldBOOL,0,1,0);
  DefField('UpisniBroj',fldZSTRING,0,10,0);
  DefField('DatumUpisa',fldDATE,0,1,0);
  DefField('ZdravUvje',fldBLOB,fldstMEMO,100,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
end;

{______________________________________________________________________________}
procedure StoredVrsteklonova_db;
begin
  DefTable('VrsteKlonova.DB','PARADOX','','slovene',2,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,30,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredVrstepodloga_db;
begin
  DefTable('VrstePodloga.DB','PARADOX','','slovene',2,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('Naziv',fldZSTRING,0,30,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxNaziv','','','','',[2],256,1,30,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure StoredZahtvocaridetail_db;
begin
  DefTable('ZahtVocariDetail.DB','PARADOX','','slovene',44,3,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('SifraZahtMast',fldINT32,0,1,0);
  DefField('SifraBiljnaVrsta',fldINT32,0,1,0);
  DefField('SifraSorta',fldINT32,0,1,0);
  DefField('SifraKlonSorte',fldINT32,0,1,0);
  DefField('SifraPodloga',fldINT32,0,1,0);
  DefField('SifraKlonPodloge',fldINT32,0,1,0);
  DefField('SifraKategorija',fldINT32,0,1,0);
  DefField('SifraNazSadMat',fldINT32,0,1,0);
  DefField('JedMj',fldZSTRING,0,4,0);
  DefField('KolicinaPrijava',fldFLOAT,0,1,0);
  DefField('KolicinaPreg1',fldFLOAT,0,1,0);
  DefField('JedMjPerg1',fldZSTRING,0,4,0);
  DefField('KolicinaPreg2',fldFLOAT,0,1,0);
  DefField('JedMjPreg2',fldZSTRING,0,4,0);
  DefField('KolicinaStabala',fldINT32,0,1,0);
  DefField('KolicinaPupovaPreg1',fldFLOAT,0,1,0);
  DefField('JedMJPupova',fldZSTRING,0,4,0);
  DefField('SortaKolVlastita',fldFLOAT,0,1,0);
  DefField('SortaKolNabav',fldFLOAT,0,1,0);
  DefField('SortaUvoz',fldBOOL,0,1,0);
  DefField('SortaDobavljac',fldINT32,0,1,0);
  DefField('SortaZemljaUvoza',fldZSTRING,0,30,0);
  DefField('PodlogaKolVlastita',fldFLOAT,0,1,0);
  DefField('PodlogaKolNabav',fldFLOAT,0,1,0);
  DefField('PodlogaUvoz',fldBOOL,0,1,0);
  DefField('PodlogaDobavljac',fldINT32,0,1,0);
  DefField('PodlogazemljaUvoza',fldZSTRING,0,30,0);
  DefField('SortaDokumentUvoza',fldZSTRING,0,40,0);
  DefField('PodlogaDokumentUvoza',fldZSTRING,0,40,0);
  DefField('KolUvjerenje',fldFLOAT,0,1,0);
  DefField('JedMjKolUvjer',fldZSTRING,0,4,0);
  DefField('NeideNaUvj',fldBOOL,0,1,0);
  DefField('NeideNaZap',fldBOOL,0,1,0);
  DefField('Napomena',fldZSTRING,0,35,0);
  DefField('BrojUvjerenja',fldZSTRING,0,10,0);
  DefField('Zap5',fldBOOL,0,1,0);
  DefField('Zap6',fldBOOL,0,1,0);
  DefField('Printano',fldBOOL,0,1,0);
  DefField('Printano2',fldBOOL,0,1,0);
  DefField('NeKakvoca',fldFLOAT,0,1,0);
  DefField('JMKakvoca',fldZSTRING,0,4,0);
  DefField('NePrirast',fldFLOAT,0,1,0);
  DefField('JMPrirast',fldZSTRING,0,4,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxSifraZahtMast','','','','',[2,9],256,2,8,0,2048,2,16);
  DefIndex('SifraZahtMast','','','','',[2],2,1,4,0,2048,3,16);
end;

{______________________________________________________________________________}
procedure StoredZahtvocarimaster_db;
begin
  DefTable('ZAHTVOCARIMASTER.DB','PARADOX','','slovene',7,2,0,0);
  DefField('Sifra',fldINT32,fldstAUTOINC,1,0);
  DefField('SifraUvjerenje',fldINT32,0,1,0);
  DefField('SifraRasadnik',fldINT32,0,1,0);
  DefField('Zapisnik1',fldZSTRING,0,20,0);
  DefField('DatumZap1',fldDATE,0,1,0);
  DefField('Zapisnik2',fldZSTRING,0,20,0);
  DefField('DatumZap2',fldDATE,0,1,0);
  DefIndex('','','','','',[1],0,1,4,0,2048,1,22);
  DefIndex('IxSifuvj','','','','',[2],256,1,4,0,2048,2,144);
end;

{______________________________________________________________________________}
procedure ReadStoredTable(iTable: Stored_Tables);
begin
  iField  := 0;
  iIndex  := 0;
  case iTable of
    Biljnavrstavoc_db  : StoredBiljnavrstavoc_db;
    Brojeviuvjerenja_db: StoredBrojeviuvjerenja_db;
    Grupebiljavoc_db   : StoredGrupebiljavoc_db;
    Kategorijavoc_db   : StoredKategorijavoc_db;
    Nazivsadmatvoc_db  : StoredNazivsadmatvoc_db;
    Partnerivoc_db     : StoredPartnerivoc_db;
    Rasadnicivoc_db    : StoredRasadnicivoc_db;
    Setup_db           : StoredSetup_db;
    Sortavoc_db        : StoredSortavoc_db;
    Uvjerenje_db       : StoredUvjerenje_db;
    Vrsteklonova_db    : StoredVrsteklonova_db;
    Vrstepodloga_db    : StoredVrstepodloga_db;
    Zahtvocaridetail_db: StoredZahtvocaridetail_db;
    Zahtvocarimaster_db: StoredZahtvocarimaster_db;
  end;
end;

{______________________________________________________________________________}
procedure MakeAllTables(dbDatabase: TDatabase; CBInfo: TCBInfo);
var
  i: integer;
  DatasetList: TList;
  iTables: Stored_Tables;
begin
  if Assigned(CBInfo) and not CBInfo(0,Ord(High(iTables))+1,'') then
    Exit;
  Screen.Cursor := crHourGlass;
  DatasetList := TList.Create;
  try
    for i := Session.DatabaseCount-1 downto 0 do
      with Session.Databases[i] do
      while DatasetCount > 0 do begin
        DatasetList.Add(Datasets[0]);
        with Datasets[0] do begin
          DisableControls;
          Close;
        end;
      end;
    dbDatabase.Connected := true;
    Check(DbiGetDirectory(dbDatabase.Handle,False,szDirectory));
    {$IFNDEF WIN32}
    if szDirectory[StrLen(szDirectory)-1] <> '\' then
      szDirectory[StrLen(szDirectory)] := '\';
    {$ENDIF}
    for iTables := Low(iTables) to High(iTables) do try
      ReadStoredTable(iTables);
      if Assigned(CBInfo) and not CBInfo(Ord(iTables)+1,Ord(High(iTables))+1,AnsiName(TableDesc^.szTblName)) then
        Exit;
      if DBICreateTable(dbDatabase.Handle,false,TableDesc^) = DBIERR_FILEEXISTS then begin
        i := TableDesc^.iFldCount;
        try
          TableDesc^.iFldCount := 0;
          DeleteAuxFiles;
          Check(DBIDoRestructure(dbDatabase.Handle,1,@TableDesc^,nil,nil,nil,false));
        finally;
          TableDesc^.iFldCount := i;
        end;
      end;
    finally;
      FreeMem(FieldsDesc,TableDesc^.iFldCount*SizeOf(FLDDesc)); FieldsDesc := nil;
      FreeMem(IndexesOp,TableDesc^.iIDXCount*SizeOf(CROpType)); IndexesOp := nil;
      FreeMem(IndexesDesc,TableDesc^.iIDXCount*SizeOf(IDXDesc)); IndexesDesc := nil;
      FreeMem(TableDesc,SizeOf(CRTblDesc)); TableDesc := nil;
    end;
  finally
    for i := DatasetList.Count-1 downto 0 do
      with TDBDataset(DatasetList[i]) do try
        Open;
        EnableControls;
      except
      end;
    DatasetList.Free;
    Screen.Cursor := crDefault;
  end;
end;

end.
