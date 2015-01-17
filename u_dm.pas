unit u_dm;

interface

uses
  SysUtils, Classes, sSkinManager, DB, mySQLDbTables,dialogs,forms,inifiles,
  frxClass, frxDBSet, ScktComp, frxDesgn;

type
  Tdm = class(TDataModule)
    My_Conn: TmySQLDatabase;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure smAfterChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;
  kd_comp,ip_kasir,macam_harga:string;
  a_path,file_ini,cek_pusat:string;
  sop:Boolean;

implementation

uses u_trans;


{$R *.dfm}

function krupuk(const s: String; CryptInt: Integer): String;
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
  data,pusat,jalur1,jalur2,nama,kata: string;
  X: TextFile;
  appINI : TIniFile;
begin
  a_path:= extractfilepath(application.ExeName);
  sm.SkinDirectory:=a_path+'\tools\skins';

  file_ini:= a_path+'\tools\gain.ini';
  
  appINI := TIniFile.Create(file_ini) ;
  try
  kd_comp := appINI.ReadString ('kasir', 'kd_perusahaan', '');

  sm.SkinName:=appINI.ReadString('kasir','nama_skin','WEB (internal)');
  sm.HueOffset:=appini.ReadInteger('kasir','hue_skin',0);
  sm.Saturation:=appini.ReadInteger('kasir','sat_skin',0);
 finally
 appINI.Free;
 end;

dm.My_Conn.Connected:= False;
 assignfile(X,'tools\koneksi.cbCon');
 try
   reset(X);
   readln(X,pusat);
   readln(X,data);
   readln(X,jalur2);
   readln(X,nama);
   readln(X,kata);
   closefile(X);
 dm.my_conn.Host :=krupuk(pusat,6);
 dm.My_Conn.DatabaseName:= krupuk(data,6);
 jalur1 :=krupuk(jalur2,6);
 dm.my_conn.Port :=strtoint(jalur1);
 dm.my_conn.UserName :=krupuk(nama,6);
 dm.my_conn.UserPassword :=krupuk(kata,6);
 dm.My_Conn.Connected:= true;
 except
 showmessage('koneksi tidak berhasil');
 application.Terminate;
 end;
end;

procedure Tdm.smAfterChange(Sender: TObject);
  var appINI : TIniFile;
begin
 appINI := TIniFile.Create(file_ini) ;
 try
  appINI.WriteString('kasir','nama_skin',dm.sm.SkinName);
  appINI.WriteInteger('kasir','hue_skin',dm.sm.HueOffset);
  appINI.WriteInteger('kasir','sat_skin',dm.sm.Saturation);
 finally
 appINI.Free;
 end;
end;

end.
