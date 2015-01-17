unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel,U_fungsi, sEdit, sGroupBox, Buttons, sBitBtn,
  sButton, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit,
  ComCtrls, sRichEdit, sStatusBar,Winsock, sComboBox, sSkinProvider;

type
  TF_Login = class(TForm)
    sGroupBox1: TsGroupBox;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    Ed_N_Op: TsEdit;
    sGroupBox2: TsGroupBox;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    Ed_Kd_User: TsEdit;
    Ed_N_User: TsEdit;
    Ed_Password: TsEdit;
    sBitBtn2: TsBitBtn;
    sButton1: TsButton;
    sb: TsStatusBar;
    sLabel1: TsLabel;
    cb_kd_OP: TsComboBox;
    ed_ip: TsEdit;
    procedure FormShow(Sender: TObject);
    procedure Ed_Kd_UserKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton1Click(Sender: TObject);
    procedure Ed_PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_N_UserEnter(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure cb_kd_OPChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Login: TF_Login;
  fungsi:Tfungsi;
  Mgs : TMsg;

//  sop:boolean;
implementation

uses u_dm, u_trans;


{$R *.dfm}


//===========================================
//procedure untuk mendapatkan Local Host dan Local IP
//=============================================
function GetIPFromHost
(var HostName, IPaddr, WSAErr: string): Boolean; 
type 
  Name = array[0..100] of Char; 
  PName = ^Name; 
var 
  HEnt: pHostEnt; 
  HName: PName; 
  WSAData: TWSAData; 
  i: Integer; 
begin 
  Result := False;     
  if WSAStartup($0101, WSAData) <> 0 then begin 
    WSAErr := 'Winsock is not responding."'; 
    Exit; 
  end; 
  IPaddr := ''; 
  New(HName); 
  if GetHostName(HName^, SizeOf(Name)) = 0 then
  begin 
    HostName := StrPas(HName^); 
    HEnt := GetHostByName(HName^); 
    for i := 0 to HEnt^.h_length - 1 do 
     IPaddr :=
      Concat(IPaddr,
      IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.'); 
    SetLength(IPaddr, Length(IPaddr) - 1); 
    Result := True; 
  end
  else begin 
   case WSAGetLastError of
    WSANOTINITIALISED:WSAErr:='WSANotInitialised'; 
    WSAENETDOWN      :WSAErr:='WSAENetDown'; 
    WSAEINPROGRESS   :WSAErr:='WSAEInProgress';
   end;
  end;
  Dispose(HName);
  WSACleanup;
end;
//=================================================


procedure TF_Login.FormShow(Sender: TObject);
var x:integer;
begin
sop:= True;
fungsi.SQLExec(dm.Q_show,'select * from tb_login_jaga where status="jaga" and mode="online" and kd_perusahaan="'+kd_comp+'" order by user', true);
if dm.Q_show.Eof then
begin
showmessage('untuk menjalankan program ini'#10#13'Program Server harus aktif terlebih dahulu');
Application.Terminate;
end else
begin
  for x:=1 to dm.Q_show.RecordCount do
  begin
    cb_kd_op.AddItem(dm.Q_show.fieldbyname('user').AsString,sender);
    dm.Q_show.Next;
  end;

cb_kd_op.ItemIndex:= dm.Q_show.RecordCount-1;
ED_N_Op.Text:= dm.Q_show.fieldbyname('nama_user').AsString;
ed_ip.Text:= dm.Q_show.fieldbyname('komp').AsString;
end; 
end;

procedure TF_Login.Ed_Kd_UserKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
begin
  PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE );
  FUNGSI.SQLExec(DM.Q_Show,'select * from tb_user where kd_perusahaan="'+sb.Panels[0].Text+'" and kd_user="'+ed_kd_user.Text+'" and kasir=''Y''',true);
  if dm.Q_show.Eof then
    Begin
    messagedlg('Kode ini tidak terdaftar...',mtError,[mbOk],0);
    ed_kd_user.SetFocus;
    End else
    begin
      ed_password.Enabled:= true;
      Ed_Password.SetFocus;
      Ed_N_User.Text:= dm.Q_show.fieldbyname('n_user').AsString;
    end;
end;

if key=vk_escape then close;
end;

procedure TF_Login.sButton1Click(Sender: TObject);
var
  Host, IP, Err,passs: string;
begin
  if GetIPFromHost(Host, IP, Err) then ip_kasir := IP //masupin local IP ke edit1
   else MessageDlg(Err, mtError, [mbOk], 0);

if ed_n_user.Text<>'' then
begin
fungsi.SQLExec(dm.Q_temp,'select md5("'+ed_password.Text+'")as passs',true);
passs:=dm.Q_temp.fieldbyname('passs').AsString;
if compareText(dm.Q_show.FieldByName('password').AsString,passs)<>0 then
begin
messagedlg('Password salah..',mtError,[mbOk],0);
ed_password.Clear;
ed_password.SetFocus;
end else
begin
fungsi.SQLExec(dm.Q_temp,'select tanggal from tb_login_kasir where kd_perusahaan = '+
quotedStr(kd_comp)+' and user ='+(QuotedStr(Ed_Kd_User.Text))+' and kd_jaga ='+
QuotedStr(cb_kd_OP.Text)+' and status = ''online''',True);
if dm.Q_temp.Eof then
begin
   dm.My_Conn.StartTransaction;
   try
    fungsi.SQLExec(dm.q_exe,'insert into tb_login_kasir(kd_perusahaan,user,kd_jaga,tanggal,status,komp)values("'+kd_comp+'","'+ed_kd_user.Text
    +'", "'+cb_kd_op.Text+'",now(),''online'',"'+ip_kasir+'")',false);
    dm.My_Conn.Commit;
   except
    dm.My_Conn.Rollback;
   end;
end;

f_transaksi.Sb.Panels[2].Text:= ed_kd_user.Text;
f_transaksi.Sb.Panels[3].Text:= ed_N_User.Text;
f_transaksi.Sb.Panels[4].Text:= cb_kd_OP.Text;
f_transaksi.Sb.Panels[5].Text:= ed_N_Op.Text;

F_Transaksi.awal;

if F_Transaksi.cb_aktif.ItemIndex = 1 then
F_Transaksi.aktifkan_pesan;

F_Transaksi.panel_auto_width;

sop:= false;
close;
end;
end;
end;

procedure TF_Login.Ed_PasswordKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
begin
key:=#0;
sButton1Click(Sender);
end;
end;

procedure TF_Login.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then close;

if key=vk_f1 then ed_kd_user.SetFocus;
if key=vk_f2 then cb_kd_op.SetFocus;
end;

procedure TF_Login.Ed_N_UserEnter(Sender: TObject);
begin
ed_kd_user.SetFocus;
end;

procedure TF_Login.sBitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TF_Login.cb_kd_OPChange(Sender: TObject);
begin
fungsi.SQLExec(dm.Q_show,'select * from tb_login_jaga where tanggal=date(now()) and `status`="'+
'jaga'+'" and `mode`="'+'online'+'" and kd_perusahaan="'+kd_comp+'" and user="'+cb_kd_op.Text+'"', true);

ED_N_Op.Text:= dm.Q_show.fieldbyname('nama_user').AsString;
ed_ip.Text:= dm.Q_show.fieldbyname('komp').AsString;
end;

procedure TF_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if sop=true then
F_Transaksi.tmr_out.Enabled:= true;

action:= caFree;
F_Login:=nil;
end;

end.
