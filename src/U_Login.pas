unit U_Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sLabel, UFungsi, sEdit, sGroupBox, Buttons, sBitBtn,
  sButton, ComCtrls,
  sStatusBar, StdCtrls;

type
  TF_Login = class(TForm)
    gbUser: TGroupBox;
    sLabel4: TLabel;
    sLabel5: TLabel;
    sLabel6: TLabel;
    EdKdUser: TEdit;
    EdNamaUser: TEdit;
    EdPasswordUser: TEdit;
    sBitBtn2: TBitBtn;
    BtnLogin: TButton;
    sb: TStatusBar;
    l_1: TLabel;
    gbServer: TGroupBox;
    Lbl1: TLabel;
    Lbl2: TLabel;
    Lbl3: TLabel;
    EdKdOperator: TEdit;
    EdNamaOperator: TEdit;
    EdPasswordOperator: TEdit;
    procedure Pilih_Perusahaan;
    procedure Cek_Perusahaan;
    procedure FormShow(Sender: TObject);
    procedure EdKdUserKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnLoginClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sBitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbClick(Sender: TObject);
    procedure EdKdUserChange(Sender: TObject);
    procedure EdKdOperatorChange(Sender: TObject);
    procedure EdKdOperatorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPasswordUserKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPasswordOperatorKeyDown(Sender: TObject; var Key: Word; Shift:
      TShiftState);
  private
    userPassword, operatorPassword: string;
    { Private declarations }
  public
  end;

var
  F_Login: TF_Login;

implementation

uses
  u_dm, u_trans, u_cari;


{$R *.dfm}

procedure TF_Login.FormShow(Sender: TObject);
begin
  dm.Login := False;

  fungsi.SQLExec(dm.Q_temp, Format('select n_perusahaan from tb_company '+
    'where kd_perusahaan ="%s"', [dm.kd_perusahaan]), true);

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

procedure TF_Login.EdKdUserKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  sql: string;
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    sql := 'SELECT tb_user.n_user, tb_user.`password` FROM tb_user INNER JOIN '
      + 'tb_user_company ON tb_user.kd_user = tb_user_company.kd_user WHERE ' +
      'tb_user.kd_user="%s" AND tb_user_company.kasir="Y" ' +
      'AND tb_user_company.kd_perusahaan="%s"';
    fungsi.SQLExec(DM.Q_Show, Format(sql,[EdKdUser.Text, dm.kd_perusahaan]), true);
    if dm.Q_show.Eof then
    begin
      messagedlg('Kode User ' + EdKdUser.Text + ' tidak terdaftar', mtError, [mbOk], 0);
      EdKdUser.SetFocus;
    end
    else
    begin
      EdNamaUser.Text := dm.Q_show.FieldByName('n_user').AsString;
      userPassword := dm.Q_show.FieldByName('password').AsString;

      sql := 'SELECT `nilai` FROM `tb_settings` WHERE `parameter`="checkin"';
      fungsi.SQLExec(DM.Q_Show, sql, true);
      if dm.Q_show.FieldByName('nilai').AsBoolean then
      begin
        sql := 'SELECT user_id FROM tb_checkinout WHERE ISNULL(checkout_time) '
          + 'AND user_id="%s"';
        fungsi.SQLExec(DM.Q_Show, Format(sql, [EdKdUser.Text]), true);
        if dm.Q_show.Eof then
        begin
          EdKdUser.SetFocus;
          EdNamaUser.Clear;
          messagedlg('Tidak Dapat Login '#10#13'USER ' + EdKdUser.Text +
            ' Belum Check IN....', mtError, [mbOk], 0);
          Exit;
        end;
      end;

      EdPasswordUser.Enabled := true;
      EdPasswordUser.SetFocus;
    end;
  end;
end;

procedure TF_Login.BtnLoginClick(Sender: TObject);
var
  Host, IP, Err: string;
begin
  if fungsi.GetIPFromHost(Host, IP, Err) then
    dm.ip_kasir := IP //masupin local IP ke edit1
  else
    MessageDlg(Err, mtError, [mbOk], 0);

  if EdNamaUser.Text = '' then
  begin
    EdKdUser.SetFocus;
    Exit;
  end;

  if EdPasswordUser.Enabled then
  begin
    EdPasswordUser.SetFocus;
    Exit;
  end;

  if EdNamaOperator.Text = '' then
  begin
    EdKdOperator.SetFocus;
    Exit;
  end;

  if EdPasswordOperator.Enabled then
  begin
    EdPasswordOperator.SetFocus;
    Exit;
  end;

  fungsi.SQLExec(dm.Q_temp, Format('select tanggal from tb_login_kasir '+
    'where kd_perusahaan = "%s" and user ="%s" and kd_jaga ="%s" and '+
    'status = "online"', [dm.kd_perusahaan, EdKdUser.Text, EdKdOperator.Text]), True);
  if dm.Q_temp.Eof then
  begin
    dm.db_conn.StartTransaction;
    try
      fungsi.SQLExec(dm.q_exe, Format('insert into tb_login_kasir(kd_perusahaan, '+
        'user,kd_jaga,tanggal,status,komp)values("%s","%s", "%s",now(),"online","%s")',
        [dm.kd_perusahaan, EdKdUser.Text, EdKdOperator.Text, dm.ip_kasir]), false);
      dm.db_conn.Commit;
    except
      dm.db_conn.Rollback;
      ShowMessage('Tidak Bisa Login Kasir');
      Exit;
    end;
  end;

  F_Transaksi.Sb.Panels[3].Text := dm.kd_perusahaan;
  dm.kd_pengguna := EdKdUser.Text;
  f_transaksi.Sb.Panels[4].Text := dm.kd_pengguna;
  dm.kd_operator := EdKdOperator.Text;
  f_transaksi.Sb.Panels[5].Text := dm.kd_operator;

  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'kd_perusahaan', dm.kd_perusahaan);
  F_Transaksi.awal;
  F_Transaksi.kode_transaksi_terbaru;

  if F_Transaksi.PesanAktif = 1 then
    F_Transaksi.aktifkan_pesan;

  F_Transaksi.panel_auto_width;

  dm.Login := True;
  close;
end;

procedure TF_Login.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_escape then
    close;

  if key = vk_f1 then
    EdKdUser.SetFocus;

  if key = vk_f2 then
    Pilih_Perusahaan;
end;

procedure TF_Login.sBitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TF_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  F_Login := nil;
end;

procedure TF_Login.Pilih_Perusahaan;
var
  kd_perusahaan_temp: string;
begin
  kd_perusahaan_temp := dm.kd_perusahaan;

  application.CreateForm(tf_cari, f_cari);
  with F_cari do
  try
    _SQLi := 'SElECT kd_perusahaan,n_perusahaan from tb_company';
    tblcap[0] := 'Kode';
    tblCap[1] := 'Nama Perusahaan';
    if ShowModal = mrOk then
    begin
      dm.kd_perusahaan := TblVal[0];
      sb.Panels[0].Text := dm.kd_perusahaan;
      sb.Panels[1].Text := tblval[1];
      Cek_Perusahaan;
    end;
  finally
    close;
  end;
  if dm.kd_perusahaan <> kd_perusahaan_temp then
  begin
    EdKdUser.Clear;
    EdKdOperator.Clear;
    EdKdUser.SetFocus;
  end;
end;

procedure TF_Login.sbClick(Sender: TObject);
begin
  Pilih_Perusahaan;
end;

procedure TF_Login.Cek_Perusahaan;
var
  cek_pusat: string;
begin
  fungsi.SQLExec(dm.Q_temp, 'select * from tb_company where kd_perusahaan =' +
    quotedstr(dm.kd_perusahaan) + '', true);
  cek_pusat := dm.Q_temp.fieldbyname('ket').AsString;

  if (cek_pusat <> 'PUSAT') and (dm.Q_temp.fieldbyname('onserver').AsString = 'N') then
  begin
    fungsi.SQLExec(dm.Q_exe,
      'select `data` from tb_export_import where `data` = "PC_' + dm.kd_perusahaan
      + '_' + formatdatetime('yyyy-MM-dd', Date()) + '.zip" and ket = "terima"', True);

    if dm.Q_exe.Eof then
    begin
      case MessageDlg('DATA UNTUK HARI INI UNTUK ' + dm.kd_perusahaan +
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
end;

procedure TF_Login.EdKdUserChange(Sender: TObject);
begin
  EdNamaUser.Clear;
  EdPasswordUser.Clear;
  EdPasswordUser.Enabled := False;
end;

procedure TF_Login.EdKdOperatorChange(Sender: TObject);
begin
  EdNamaOperator.Clear;
  EdPasswordOperator.Clear;
  EdPasswordOperator.Enabled := False;
end;

procedure TF_Login.EdKdOperatorKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
var
  sql: string;
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    sql := 'SELECT tb_user.n_user, tb_user.`password` FROM tb_user INNER JOIN '
      + 'tb_user_company ON tb_user.kd_user = tb_user_company.kd_user WHERE ' +
      'tb_user.kd_user="' + EdKdOperator.Text +
      '" AND tb_user_company.tkAdmin="Y" ' + 'AND tb_user_company.kd_perusahaan="'
      + dm.kd_perusahaan + '"';
    fungsi.SQLExec(DM.Q_Show, sql, true);
    if dm.Q_show.Eof then
    begin
      messagedlg('Kode Operator ' + EdKdOperator.Text + ' tidak terdaftar',
        mtError, [mbOk], 0);
      EdKdOperator.SetFocus;
    end
    else
    begin
      EdNamaOperator.Text := dm.Q_show.FieldByName('n_user').AsString;
      operatorPassword := dm.Q_show.FieldByName('password').AsString;

      sql := 'SELECT `nilai` FROM `tb_settings` WHERE `parameter`="checkin"';
      fungsi.SQLExec(DM.Q_Show, sql, true);
      if dm.Q_show.FieldByName('nilai').AsBoolean then
      begin
        sql := 'SELECT user_id FROM tb_checkinout WHERE ISNULL(checkout_time) '
          + 'AND user_id="' + EdKdOperator.Text + '"';
        fungsi.SQLExec(DM.Q_Show, sql, true);
        if dm.Q_show.Eof then
        begin
          EdKdOperator.SetFocus;
          EdNamaOperator.Clear;
          messagedlg('Tidak Dapat Login '#10#13'USER ' + EdKdOperator.Text +
            ' Belum Check IN....', mtError, [mbOk], 0);
          Exit;
        end;
      end;

      EdPasswordOperator.Enabled := true;
      EdPasswordOperator.SetFocus;
    end;
  end;
end;

procedure TF_Login.EdPasswordUserKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
var
  passs: string;
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if EdNamaUser.Text <> '' then
    begin
      fungsi.SQLExec(dm.Q_temp, 'select md5("' + EdPasswordUser.Text +
        '")as passs', true);
      passs := dm.Q_temp.fieldbyname('passs').AsString;
      if compareText(userPassword, passs) <> 0 then
      begin
        messagedlg('Password User salah..', mtError, [mbOk], 0);
        EdPasswordUser.Clear;
        EdPasswordUser.SetFocus;
      end
      else
      begin
        EdPasswordUser.Enabled := False;
        BtnLoginClick(Sender);
      end;
    end;
  end;
end;

procedure TF_Login.EdPasswordOperatorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  passs: string;
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if EdNamaOperator.Text <> '' then
    begin
      fungsi.SQLExec(dm.Q_temp, 'select md5("' + EdPasswordOperator.Text +
        '")as passs', true);
      passs := dm.Q_temp.fieldbyname('passs').AsString;
      if compareText(operatorPassword, passs) <> 0 then
      begin
        messagedlg('Password Operator salah..', mtError, [mbOk], 0);
        EdPasswordOperator.Clear;
        EdPasswordOperator.SetFocus;
      end
      else
      begin
        EdPasswordOperator.Enabled := False;
        BtnLoginClick(Sender);
      end;
    end;
  end;
end;

end.

