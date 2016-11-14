unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, U_fungsi, sEdit, sGroupBox, Buttons, sBitBtn,
  sButton, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit, sCurrencyEdit, ComCtrls,
  sRichEdit, sStatusBar, Winsock, sComboBox, sSkinProvider;

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
    l_1: TsLabel;
    procedure Pilih_Perusahaan;
    procedure Cek_Perusahaan;
    procedure FormShow(Sender: TObject);
    procedure Ed_Kd_UserKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sButton1Click(Sender: TObject);
    procedure Ed_PasswordKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Ed_N_UserEnter(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
    procedure cb_kd_OPChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbClick(Sender: TObject);
    procedure Ed_Kd_UserChange(Sender: TObject);
  private
    { Private declarations }
  public
    userPassword, userRealName: string;
    sop: Boolean;
  end;

var
  F_Login: TF_Login;

implementation

uses
  u_dm, u_trans, u_cari;


{$R *.dfm}


//===========================================
//procedure untuk mendapatkan Local Host dan Local IP
//=============================================
function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
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
  if WSAStartup($0101, WSAData) <> 0 then
  begin
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
      IPaddr := Concat(IPaddr, IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');
    SetLength(IPaddr, Length(IPaddr) - 1);
    Result := True;
  end
  else
  begin
    case WSAGetLastError of
      WSANOTINITIALISED:
        WSAErr := 'WSANotInitialised';
      WSAENETDOWN:
        WSAErr := 'WSAENetDown';
      WSAEINPROGRESS:
        WSAErr := 'WSAEInProgress';
    end;
  end;
  Dispose(HName);
  WSACleanup;
end;
//=================================================

procedure TF_Login.FormShow(Sender: TObject);
begin
  sop := True;

  fungsi.SQLExec(dm.Q_temp,
    'select n_perusahaan from tb_company where kd_perusahaan =' + quotedstr(dm.kd_perusahaan)
    + '', true);

  if not (dm.Q_temp.Eof) then
  begin
    sb.Panels[0].Text := dm.kd_perusahaan;
    sb.Panels[1].Text := dm.Q_temp.FieldByName('n_perusahaan').AsString;
    Cek_Perusahaan;
  end
  else
  begin
    Pilih_Perusahaan;
  end;
end;

procedure TF_Login.Ed_Kd_UserKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  sql: string;
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    sql := 'SELECT tb_user.n_user, tb_user.`password` FROM tb_user INNER JOIN '
      + 'tb_user_company ON tb_user.kd_user = tb_user_company.kd_user WHERE ' +
      'tb_user.kd_user="' + ed_kd_user.Text + '" AND tb_user_company.kasir="Y" '
      + 'AND tb_user_company.kd_perusahaan="' + sb.Panels[0].Text + '"';
    fungsi.SQLExec(DM.Q_Show, sql, true);
    if dm.Q_show.Eof then
    begin
      messagedlg('Kode ini tidak terdaftar...', mtError, [mbOk], 0);
      ed_kd_user.SetFocus;
    end
    else
    begin
      userRealName := dm.Q_show.FieldByName('n_user').AsString;
      userPassword := dm.Q_show.FieldByName('password').AsString;

      sql:= 'SELECT `nilai` FROM `tb_settings` WHERE `parameter`="checkin"';
      fungsi.SQLExec(DM.Q_Show,sql,true);
      if dm.Q_show.FieldByName('nilai').AsBoolean then
      begin
        sql:= 'SELECT user_id FROM tb_checkinout WHERE ISNULL(checkout_time) ' +
              'AND user_id="'+ed_kd_user.Text+'"';
        fungsi.SQLExec(DM.Q_Show,sql,true);
        if dm.Q_show.Eof then
        begin
          messagedlg('Tidak Dapat Login '#10#13'USER belum Check IN....',mtError,[mbOk],0);
          ed_kd_user.SetFocus;
          Exit;
        end;
      end;

      ed_password.Enabled := true;
      Ed_Password.SetFocus;
      Ed_N_User.Text := userRealName;
    end;
  end;

  if key = vk_escape then
    close;
end;

procedure TF_Login.sButton1Click(Sender: TObject);
var
  Host, IP, Err, passs: string;
begin
  if GetIPFromHost(Host, IP, Err) then
    dm.ip_kasir := IP //masupin local IP ke edit1
  else
    MessageDlg(Err, mtError, [mbOk], 0);

  if ed_n_user.Text <> '' then
  begin
    fungsi.SQLExec(dm.Q_temp, 'select md5("' + ed_password.Text + '")as passs', true);
    passs := dm.Q_temp.fieldbyname('passs').AsString;
    if compareText(userPassword, passs) <> 0 then
    begin
      messagedlg('Password salah..', mtError, [mbOk], 0);
      ed_password.Clear;
      ed_password.SetFocus;
    end
    else
    begin
      fungsi.SQLExec(dm.Q_temp,
        'select tanggal from tb_login_kasir where kd_perusahaan = ' + quotedStr(sb.Panels
        [0].text) + ' and user =' + (QuotedStr(Ed_Kd_User.Text)) +
        ' and kd_jaga =' + QuotedStr(cb_kd_OP.Text) + ' and status = ''online''', True);
      if dm.Q_temp.Eof then
      begin
        dm.db_conn.StartTransaction;
        try
          fungsi.SQLExec(dm.q_exe,
            'insert into tb_login_kasir(kd_perusahaan,user,kd_jaga,tanggal,status,komp)values("' +
            sb.Panels[0].text + '","' + ed_kd_user.Text + '", "' + cb_kd_op.Text
            + '",now(),''online'',"' + dm.ip_kasir + '")', false);
          dm.db_conn.Commit;
        except
          dm.db_conn.Rollback;
        end;
      end;

      F_Transaksi.Sb.Panels[1].Text := sb.Panels[0].Text;
      f_transaksi.Sb.Panels[2].Text := ed_kd_user.Text;
      f_transaksi.Sb.Panels[3].Text := ed_N_User.Text;
      f_transaksi.Sb.Panels[4].Text := cb_kd_OP.Text;
      f_transaksi.Sb.Panels[5].Text := ed_N_Op.Text;

      fungsi.simpan_ini(dm.file_ini, 'kasir', 'kd_perusahaan', sb.Panels[0].Text);
      F_Transaksi.awal;
      F_Transaksi.kode_transaksi_terbaru;
      
      if F_Transaksi.cb_aktif.ItemIndex = 1 then
        F_Transaksi.aktifkan_pesan;

      F_Transaksi.panel_auto_width;

      sop := false;
      close;
    end;
  end;
end;

procedure TF_Login.Ed_PasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    sButton1Click(Sender);
  end;
end;

procedure TF_Login.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
    close;

  if key = vk_f1 then
    ed_kd_user.SetFocus;
  if key = vk_f2 then
    Pilih_Perusahaan;
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
  fungsi.SQLExec(dm.Q_show,
    'select * from tb_login_jaga where `mode`="online" and kd_perusahaan="' + sb.Panels[0].text
    + '" and user="' + cb_kd_op.Text + '"', true);

  ED_N_Op.Text := dm.Q_show.fieldbyname('nama_user').AsString;
  ed_ip.Text := dm.Q_show.fieldbyname('komp').AsString;
end;

procedure TF_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if sop = true then
    F_Transaksi.tmr_out.Enabled := true;

  action := caFree;
  F_Login := nil;
end;

procedure TF_Login.Pilih_Perusahaan;
begin
  application.CreateForm(tf_cari, f_cari);
  with F_cari do
  try
    _SQLi := 'SElECT kd_perusahaan,n_perusahaan from tb_company';
    tblcap[0] := 'Kode';
    tblCap[1] := 'Nama Perusahaan';
    if ShowModal = mrOk then
    begin
      sb.Panels[0].Text := TblVal[0];
      sb.Panels[1].Text := tblval[1];
    end;

    if sb.Panels[0].Text = '' then
      Pilih_Perusahaan;

    Cek_Perusahaan;
  finally
    close;
  end;
end;

procedure TF_Login.sbClick(Sender: TObject);
begin
  Pilih_Perusahaan;
end;

procedure TF_Login.Cek_Perusahaan;
var
  x: integer;
  cek_pusat: string;
begin
  fungsi.SQLExec(dm.Q_temp, 'select * from tb_company where kd_perusahaan =' +
    quotedstr(sb.Panels[0].text) + '', true);
  cek_pusat := dm.Q_temp.fieldbyname('ket').AsString;

  if (cek_pusat <> 'PUSAT') and (dm.Q_temp.fieldbyname('onserver').AsString = 'N') then
  begin
    fungsi.SQLExec(dm.Q_exe,
      'select `data` from tb_export_import where `data` = "PC_' + sb.Panels[0].text
      + '_' + formatdatetime('yyyy-MM-dd', Date()) + '.zip" and ket = "terima"', True);

    if dm.Q_exe.Eof then
    begin
      case MessageDlg('DATA UNTUK HARI INI UNTUK ' + sb.Panels[1].text +
        ' BELUM DILOAD,' + #13#10 + 'Pilih Perusahaan Lain?', mtWarning, mbOKCancel, 0) of
        mrOk:
          begin
            Pilih_Perusahaan;
            Exit;
          end;
        mrCancel:
          begin
            Application.Terminate;
          end;
      end;
    end;
  end;

  fungsi.SQLExec(dm.Q_show, 'select * from tb_login_jaga where mode="online" and kd_perusahaan="' + sb.Panels[0].text +
    '" order by user', true);
  if dm.Q_show.Eof then
  begin
    case MessageDlg('MD/Operator untuk ' + sb.Panels[1].text +
      ' belum AKTIF,'#10#13'Pilih Perusahaan Lain?', mtWarning, mbOKCancel, 0) of
      mrOk:
        begin
          Pilih_Perusahaan;
          Exit;
        end;
      mrCancel:
        begin
          Application.Terminate;
        end;
    end;
  end
  else
  begin
    cb_kd_op.Clear;
    for x := 1 to dm.Q_show.RecordCount do
    begin
      cb_kd_op.AddItem(dm.Q_show.fieldbyname('user').AsString, nil);
      dm.Q_show.Next;
    end;

    cb_kd_op.ItemIndex := dm.Q_show.RecordCount - 1;
    ED_N_Op.Text := dm.Q_show.fieldbyname('nama_user').AsString;
    ed_ip.Text := dm.Q_show.fieldbyname('komp').AsString;
  end;
end;

procedure TF_Login.Ed_Kd_UserChange(Sender: TObject);
begin
  Ed_N_User.Clear;
  Ed_Password.Clear;
end;

end.

