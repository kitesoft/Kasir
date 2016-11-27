unit u_dm;

interface

uses
  SysUtils, Classes, sSkinManager, DB, mySQLDbTables, dialogs, forms, inifiles,
  frxClass, frxDBSet, frxDesgn, ImgList, Controls, acAlphaImageList,
  SHFolder, Windows, cxStyles;

type
  Tdm = class(TDataModule)
    db_conn: TmySQLDatabase;
    Q_show: TmySQLQuery;
    Q_exe: TmySQLQuery;
    Q_temp: TmySQLQuery;
    Q_print: TmySQLQuery;
    db_laporan: TfrxDBDataset;
    laporan: TfrxReport;
    ds_Show: TDataSource;
    ds_temp: TDataSource;
    Q_cari: TmySQLQuery;
    ds_cari: TDataSource;
    sm: TsSkinManager;
    frxdsgnr1: TfrxDesigner;
    Q_jual_global: TmySQLQuery;
    Q_jual_rinci: TmySQLQuery;
    ds_jual_global: TDataSource;
    ds_jual_rinci: TDataSource;
    gambar: TsAlphaImageList;
    QGroup: TmySQLQuery;
    Style: TcxStyleRepository;
    cxstyl1: TcxStyle;
    procedure DataModuleCreate(Sender: TObject);
    procedure smAfterChange(Sender: TObject);
    function FRObject(FastReport: TfrxReport; ObjectName: string): TObject;
    function FRMemo(FastReport: TfrxReport; ObjectName: string): TfrxMemoView;
  private
    { Private declarations }
  public
    kd_perusahaan, kd_operator, kd_pengguna, ip_kasir, macam_harga: string;
    Path, AppPath, file_ini: string;
    Login: Boolean;
  end;

var
  dm: Tdm;
  Mgs: TMsg;

implementation




{$R *.dfm}

function GetAppData(Folder: Integer): string;
var
  path: array[0..MAX_PATH] of Char;
begin
  if Succeeded(SHGetFolderPath(0, Folder, 0, 0, @Path[0])) then
    Result := path + '\Gain Profit\'
  else
    Result := '';
end;

function krupuk(const s: string; CryptInt: Integer): string;
var
  i: integer;
  s2: string;
begin
  if not (Length(s) = 0) then
    for i := 1 to Length(s) do
      s2 := s2 + Chr(Ord(s[i]) - cryptint);
  Result := s2;
end;

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  data, pusat, jalur1, jalur2, nama, kata: string;
  X: TextFile;
  appINI: TIniFile;
begin
  Path := extractfilepath(application.ExeName);
  AppPath := GetAppData(CSIDL_COMMON_APPDATA);
  if not (DirectoryExists(AppPath)) then
    CreateDir(AppPath);

  sm.SkinDirectory := AppPath + 'skins';

  file_ini := AppPath + 'gain.ini';

  appINI := TIniFile.Create(file_ini);
  try
    kd_perusahaan := appINI.ReadString('kasir', 'kd_perusahaan', '');

    sm.SkinName := appINI.ReadString('kasir', 'nama_skin', 'WEB (internal)');
    sm.HueOffset := appini.ReadInteger('kasir', 'hue_skin', 0);
    sm.Saturation := appini.ReadInteger('kasir', 'sat_skin', 0);
  finally
    appINI.Free;
  end;

  db_conn.Connected := False;
  assignfile(X, 'tools\koneksi.cbCon');
  try
    reset(X);
    readln(X, pusat);
    readln(X, data);
    readln(X, jalur2);
    readln(X, nama);
    readln(X, kata);
    closefile(X);
    db_conn.Host := krupuk(pusat, 6);
    db_conn.DatabaseName := krupuk(data, 6);
    jalur1 := krupuk(jalur2, 6);
    db_conn.Port := strtoint(jalur1);
    db_conn.UserName := krupuk(nama, 6);
    db_conn.UserPassword := krupuk(kata, 6);
    db_conn.Connected := true;
  except
    showmessage('koneksi tidak berhasil');
    application.Terminate;
  end;
end;

procedure Tdm.smAfterChange(Sender: TObject);
var
  appINI: TIniFile;
begin
  appINI := TIniFile.Create(file_ini);
  try
    appINI.WriteString('kasir', 'nama_skin', sm.SkinName);
    appINI.WriteInteger('kasir', 'hue_skin', sm.HueOffset);
    appINI.WriteInteger('kasir', 'sat_skin', sm.Saturation);
  finally
    appINI.Free;
  end;
end;

function Tdm.FRObject(FastReport: TfrxReport; ObjectName: string): TObject;
var
  i: Integer;
  AFound: Boolean;
begin
  AFound := False;
  for I := 0 to FastReport.ComponentCount - 1 do
  begin
    if LowerCase(FastReport.Components[i].Name) = LowerCase(ObjectName) then
    begin
      Result := TObject(FastReport.Components[i]);
      AFound := True;
      Break;
    end;
  end;
  if not AFound then
  begin
    Result := nil;
  end;
end;

function Tdm.FRMemo(FastReport: TfrxReport; ObjectName: string): TfrxMemoView;
begin
  Result := TfrxMemoView(FRObject(FastReport, ObjectName));
end;

end.

