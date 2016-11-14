unit UFungsi;

interface

uses
  Classes, mySQLDbTables, DB, sysutils, ShellAPI, windows, WinInet, Winsock,
  TlHelp32, Printers, WinSpool, IniFiles;

type
  Tfungsi = class(TObject)//kita membuat object baru dengan nama TProsedur
  private
    {private declaration}
  public
    function program_versi: string;
    procedure amankan(pathin, pathout: string; Chave: Word);
    procedure SQLExec(aQuery: TmySQLQuery; _SQL: string; isSearch: boolean);
    procedure Cetakfile(const sFileName: string);
    procedure openCashDrawer;
    function ambil_ini(nama_file, Section, Ident: string; def: string = ''): string;
    procedure simpan_ini(nama_file, Section, Ident, value: string);
    function tulisP(Text: string; lebar: integer; Alignment: TAlignment =
      taleftjustify): string;
    function caridanganti(sSrc, sLookFor, sReplaceWith: string): string;
    function komadesimal: Boolean;
  end;

var
  fungsi: Tfungsi;

implementation

uses
  u_dm;

function Tfungsi.komadesimal: Boolean;
begin
  result := False;
  if DecimalSeparator = ',' then
    result := True;
end;

function Tfungsi.caridanganti(sSrc, sLookFor, sReplaceWith: string): string;
var
  nPos, nLenLookFor: integer;
begin
  nPos := Pos(sLookFor, sSrc);
  nLenLookFor := Length(sLookFor);
  while (nPos > 0) do
  begin
    Delete(sSrc, nPos, nLenLookFor);
    Insert(sReplaceWith, sSrc, nPos);
    nPos := Pos(sLookFor, sSrc);
  end;
  Result := sSrc;
end;

function Tfungsi.program_versi: string;
var
  V1, V2, V3, V4: Word;
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);

  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' + IntToStr(V3) + '.' + IntToStr(V4);
end;

function Tfungsi.ambil_ini(nama_file, Section, Ident: string; def: string = ''): string;
var
  a: TIniFile;
begin
  a := TIniFile.Create(nama_file);
  try
    Result := a.ReadString(Section, Ident, def);
  finally
    a.Free;
  end;
end;

procedure Tfungsi.simpan_ini(nama_file, Section, Ident, value: string);
var
  a: TIniFile;
begin
  a := TIniFile.Create(nama_file);
  try
    a.WriteString(Section, Ident, value);
  finally
    a.Free;
  end;
end;

procedure Tfungsi.amankan(pathin, pathout: string; Chave: Word);
var
  InMS, OutMS: TMemoryStream;
  cnt: Integer;
  C: byte;
begin
  InMS := TMemoryStream.Create;
  OutMS := TMemoryStream.Create;
  try
    InMS.LoadFromFile(pathin);
    InMS.Position := 0;
    for cnt := 0 to InMS.Size - 1 do
    begin
      InMS.Read(C, 1);
      C := (C xor not (ord(chave shr cnt)));
      OutMS.Write(C, 1);
    end;
    OutMS.SaveToFile(pathout);
  finally
    InMS.Free;
    OutMS.Free;
  end;
end;

procedure Tfungsi.SQLExec(aQuery: TmySQLQuery; _SQL: string; isSearch: boolean);
begin
  with aQuery do
  begin
    Close;
    sql.Clear;
    SQL.Text := _SQL;
    if isSearch then
      Open
    else
      ExecSQL;
  end;
end;

function AddSpace(Count: integer; Text: string; AsTail: boolean = false): string;
var
  i: integer;
  s: string;
begin
  s := '';
  for i := 1 to Count do
    s := s + ' ';
  if AsTail then
    Result := Text + s
  else
    Result := s + Text;
end;

function Tfungsi.tulisP(Text: string; lebar: integer; Alignment: TAlignment =
  taleftjustify): string;
var
  left, right: integer;
begin
  // cut text if exceed width
  //if Length(Text) >= lebar then
  if Length(Text) > lebar then
    Text := Copy(Text, 1, lebar - 1);

  // count left space
  case Alignment of
    taRightJustify:
      left := lebar - Length(Text);
    taCenter:
      left := (lebar div 2) - (Length(Text) div 2);
  else
    left := 0;
  end;
  if left < 0 then
    left := 0;
  // count right space
  right := lebar - (left + Length(Text));

  result := addspace(left, text);


  // write aligned text
  {Write(AddSpace(left,''));
  Write(Text);
  Write(AddSpace(right,''));}
end;

procedure Tfungsi.CetakFile(const sFileName: string);
const
  cBUFSIZE = 16384;
type
  TDoc_Info_1 = record
    pDocName: pChar;
    pOutputFile: pChar;
    pDataType: pChar;
  end;
var
  Count: Cardinal;
  BytesWritten: Cardinal;
  hPrinter: THandle;
  hDeviceMode: THandle;
  Device: array[0..255] of Char;
  Driver: array[0..255] of Char;
  Port: array[0..255] of Char;
  DocInfo: TDoc_Info_1;
  f: file;
  Buffer: Pointer;
begin
  Printer.PrinterIndex := -1;
  Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
  if not WinSpool.OpenPrinter(@Device, hPrinter, Nil) then
    Exit;
  DocInfo.pDocName := 'Report';
  DocInfo.pOutputFile := Nil;
  DocInfo.pDatatype := 'RAW';

  if StartDocPrinter(hPrinter, 1, @DocInfo) = 0 then
  begin
    WinSpool.ClosePrinter(hPrinter);
    Exit;
  end;

  if not StartPagePrinter(hPrinter) then
  begin
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
    Exit;
  end;

  System.Assign(f, sFileName);
  try
    Reset(f, 1);
    GetMem(Buffer, cBUFSIZE);
    while not Eof(f) do
    begin
      Blockread(f, Buffer^, cBUFSIZE, Count);
      if Count > 0 then
      begin
        if not WritePrinter(hPrinter, Buffer, Count, BytesWritten) then
        begin
          EndPagePrinter(hPrinter);
          EndDocPrinter(hPrinter);
          WinSpool.ClosePrinter(hPrinter);
          FreeMem(Buffer, cBUFSIZE);
          Exit;
        end;
      end;
    end;
    FreeMem(Buffer, cBUFSIZE);
    EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
  finally
    System.CloseFile(f);
  end;
end;

procedure Tfungsi.openCashDrawer;
const
  cBUFSIZE = 16384;
type
  TDoc_Info_1 = record
    pDocName: pChar;
    pOutputFile: pChar;
    pDataType: pChar;
  end;
var
  Count: Cardinal;
  BytesWritten: Cardinal;
  hPrinter: THandle;
  hDeviceMode: THandle;
  Device: array[0..255] of Char;
  Driver: array[0..255] of Char;
  Port: array[0..255] of Char;
  DocInfo: TDoc_Info_1;
  f: file;
  Buffer: Pointer;
  Code: AnsiString;
begin
  try
    Code := AnsiChar(27) + AnsiChar(112) + AnsiChar(0) + AnsiChar(64) + AnsiChar(240);

    Printer.PrinterIndex := -1;
    Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
    if not WinSpool.OpenPrinter(@Device, hPrinter, Nil) then
      Exit;
    DocInfo.pDocName := 'Report';
    DocInfo.pOutputFile := Nil;
    DocInfo.pDatatype := 'RAW';

    WinSpool.StartDocPrinter(hPrinter, 1, @DocInfo);
    WinSpool.StartPagePrinter(hPrinter);
    WinSpool.WritePrinter(hPrinter, PAnsiChar(Code), Length(Code), BytesWritten);
    WinSpool.EndPagePrinter(hPrinter);
    WinSpool.EndDocPrinter(hPrinter);
    WinSpool.ClosePrinter(hPrinter);
  except
    // do nothing
  end;
end;

end.

