unit u_returnJual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxDataStorage,
  cxEdit, cxCurrencyEdit, sDialogs, StdCtrls, sButton, sSkinProvider, 
  sEdit, Buttons, sSpeedButton, ExtCtrls, sBevel, sLabel, 
  sCurrEdit, sCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxClasses, uTerbilang, cxControls,
  cxGridCustomView, cxGrid, sPanel, UFungsi, Mask,
  sMaskEdit, sCustomComboEdit, cxFilter, cxData, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxNavigator;

type
  Tf_returnJual = class(TForm)
    sPanel1: TPanel;
    panel2: TPanel;
    sBevel1: TBevel;
    sLabel1: TLabel;
    sLabel4: TLabel;
    sb_pelanggan: TsSpeedButton;
    sb_cari: TsSpeedButton;
    l_toko: TLabel;
    sLabel5: TLabel;
    ed_no_faktur: TEdit;
    ed_pelanggan: TEdit;
    ed_code: TEdit;
    ed_fak_jual: TEdit;
    panel3: TPanel;
    ed_nilai_faktur: TsCurrencyEdit;
    od: TOpenDialog;
    sd: TSaveDialog;
    sSkinProvider1: TsSkinProvider;
    Grid: TcxGrid;
    TableView: TcxGridTableView;
    ableViewColumn1: TcxGridColumn;
    ableViewColumn2: TcxGridColumn;
    t_view_Qty: TcxGridColumn;
    t_view_harga: TcxGridColumn;
    t_view_total: TcxGridColumn;
    Level: TcxGridLevel;
    b_auto: TButton;
    t_view_barcode: TcxGridColumn;
    spnl1: TPanel;
    b_print: TButton;
    b_simpan: TButton;
    procedure bersih;
    procedure CreateRows;
    procedure ed_codeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sb_pelangganClick(Sender: TObject);
    procedure ed_pelangganKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sb_cariClick(Sender: TObject);
    procedure
      TableViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText(Sender:
      TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure b_autoClick(Sender: TObject);
    procedure ed_no_fakturChange(Sender: TObject);
    procedure b_printClick(Sender: TObject);
    procedure b_simpanClick(Sender: TObject);
    procedure ed_fak_jualChange(Sender: TObject);
    procedure ed_codeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_no_fakturKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ed_fak_jualKeyPress(Sender: TObject; var Key: Char);
    procedure ed_pelangganChange(Sender: TObject);
    procedure cekPiutang();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_returnJual: Tf_returnJual;

implementation

uses
  u_dm, u_cari;

{$R *.dfm}

procedure Tf_returnJual.bersih;
begin
  l_toko.Caption := '';
  ed_pelanggan.Clear;
  ed_no_faktur.Clear;
  ed_fak_jual.Clear;
  tableview.DataController.RecordCount := 0;
  ed_nilai_faktur.Clear;
end;

procedure Tf_returnJual.CreateRows;
var
  baris_baru: integer;
  f: integer;
begin
  if tableview.DataController.RecordCount <> 0 then
  begin
    for f := 0 to tableview.DataController.RecordCount - 1 do
    begin
      if (pos(TableView.DataController.GetValue(f, 0), dm.Q_temp.fieldbyname('kd_barang').AsString)
        > 0) then
      begin
        tableview.DataController.ChangeFocusedRecordIndex(f);
        TableView.DataController.SetValue(f, 0, dm.Q_temp.fieldbyname('kd_barang').AsString);
        TableView.DataController.SetValue(f, 1, dm.Q_temp.fieldbyname('n_barang').AsString);
        TableView.DataController.SetValue(f, 2, TableView.DataController.GetValue
          (f, 2) + 1);
        TableView.DataController.SetValue(f, 4, TableView.DataController.GetValue
          (f, 2) * TableView.DataController.GetValue(f, 3));
        TableView.DataController.SetValue(f, 5, dm.Q_temp.fieldbyname('barcode3').AsString);
        exit;
      end;
    end;
  end;

  baris_baru := tableview.DataController.RecordCount + 1;
  tableview.DataController.RecordCount := baris_baru;
  TableView.DataController.SetValue(baris_baru - 1, 0, dm.Q_temp.fieldbyname('kd_barang').AsString);
  TableView.DataController.SetValue(baris_baru - 1, 1, dm.Q_temp.fieldbyname('n_barang').AsString);
  TableView.DataController.SetValue(baris_baru - 1, 2, 1);
  TableView.DataController.SetValue(baris_baru - 1, 3, dm.Q_temp.fieldbyname('hpp_aktif').AsCurrency);
  TableView.DataController.SetValue(baris_baru - 1, 4, dm.Q_temp.fieldbyname('hpp_aktif').AsCurrency);
  TableView.DataController.SetValue(baris_baru - 1, 5, dm.Q_temp.fieldbyname('barcode3').AsString);
  tableview.DataController.ChangeFocusedRowIndex(baris_baru);
end;

procedure Tf_returnJual.ed_codeKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if ed_code.Text = '' then
      exit;
    fungsi.sqlExec(dm.Q_temp, 'SELECT kd_barang,n_barang,barcode3, ' +
      'hpp_aktif,kd_sat3 FROM tb_barang WHERE ((kd_barang = "' + ed_code.Text +
      '" OR barcode3 = "' + ed_code.Text + '" OR barcode2 = "' + ed_code.Text +
      '" OR barcode1 = "' + ed_code.Text + '") AND kd_perusahaan="' + dm.kd_perusahaan
      + '")', true);
    if dm.Q_temp.RecordCount <> 0 then
    begin
      createrows;
    end
    else
    begin
      showmessage('data tidak dapat ditemukan dalam daftar barang...');
    end;
    ed_code.Clear
  end;

  if (key = vk_f2) and (sb_cari.Enabled = True) then
    sb_cariClick(Sender);

  if key = vk_up then
  begin
    if tableview.DataController.FocusedRecordIndex >= 1 then
      tableview.DataController.FocusedRecordIndex := tableview.DataController.FocusedRecordIndex
        - 1;
    key := VK_NONAME;

  end;
  if key = vk_down then
    tableview.DataController.FocusedRowIndex := tableview.DataController.FocusedRowIndex
      + 1;

end;

procedure Tf_returnJual.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssctrl]) and (Key = vk_delete) then
    if (MessageDlg('Yakinkah, Anda akan menghapus data ini???', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes) then
      TableView.DataController.DeleteFocused;

  if Key = vk_escape then
    Close;
  if key = vk_f2 then
    ed_code.SetFocus;
  if key = vk_f3 then
    grid.SetFocus;
  if key = vk_f4 then
    sb_pelangganClick(Sender);
  if key = vk_f5 then
    b_autoClick(Sender);
end;

procedure Tf_returnJual.sb_pelangganClick(Sender: TObject);
var
  sebelum: string;
begin
  sebelum := ed_pelanggan.Text;

  ed_pelanggan.SetFocus;
  application.CreateForm(tf_cari, f_cari);
  with F_cari do
  try
    _SQLi := 'select kd_pelanggan,n_pelanggan from ' +
      'tb_pelanggan where kd_perusahaan="' + dm.kd_perusahaan + '"';
    tblcap[0] := 'Kode';
    tblCap[1] := 'Nama Pelanggan';
    CariT := 11;
    if ShowModal = mrOk then
    begin
      ed_pelanggan.Text := TblVal[0];
      l_toko.Caption := tblval[1];
    end;
  finally
    close;
  end;
  if CompareStr(ed_pelanggan.Text, sebelum) <> 0 then
    ed_no_faktur.Clear;
end;

procedure Tf_returnJual.ed_pelangganKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = vk_return) and (sb_pelanggan.Enabled = True) then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    sb_pelangganClick(Sender);
  end;
end;

procedure Tf_returnJual.sb_cariClick(Sender: TObject);
begin
  ed_code.SetFocus;
  application.CreateForm(tf_cari, f_cari);
  with F_cari do
  try
    _SQLi := 'select kd_barang, n_barang, hpp_aktif from tb_barang where kd_perusahaan="' +
      dm.kd_perusahaan + '"';
    tblcap[0] := 'PID';
    tblCap[1] := 'Deskripsi Barang';
    if ShowModal = mrOk then
    begin
      ed_code.Text := TblVal[0];
    end;
  finally
    close;
  end;
end;

procedure Tf_returnJual.TableViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems4GetText
  (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var
  AText: string);
begin
  if (Atext <> '') then
    ed_nilai_faktur.Value := aVALUE
  else
    ed_nilai_faktur.Clear;
end;

procedure Tf_returnJual.b_autoClick(Sender: TObject);
begin
  fungsi.SQLExec(dm.Q_temp, Format('SELECT CONCAT("RT", DATE_FORMAT(NOW(), "%%Y%%m%%d"), ' +
  'LPAD(COUNT(kd_return_jual) + 1, 4, "0")) AS new_id FROM tb_return_jual_global '+
  'WHERE DATE(tgl_return_jual) = CURDATE() AND kd_perusahaan = "%s"', [dm.kd_perusahaan]),true);
  ed_no_faktur.Text := dm.Q_temp.FieldByName('new_id').AsString;
end;

procedure Tf_returnJual.ed_no_fakturChange(Sender: TObject);
var
  urip: Boolean;
begin
  fungsi.SQLExec(dm.Q_temp,
    'select kd_return_jual from tb_return_jual_global where kd_return_jual="' +
    ed_no_faktur.Text + '" and kd_perusahaan="' + dm.kd_perusahaan + '"', true);
  if not (dm.Q_temp.Eof) then
  begin
    ed_no_faktur.Color := clblue;
    urip := True;
  end
  else
  begin
    ed_no_faktur.Color := clwhite;
    urip := False;
  end;

  b_auto.Enabled := not (urip);
  sb_pelanggan.Enabled := not (urip);
  sb_cari.Enabled := not (urip);
  b_simpan.Enabled := not (urip);
  b_print.Enabled := urip;

  ed_code.ReadOnly := urip;
end;

procedure Tf_returnJual.b_printClick(Sender: TObject);
begin
  fungsi.SQLExec(dm.Q_print,
    'select * from vw_cetak_return_jual where kd_perusahaan="' + dm.kd_perusahaan
    + '" and kd_return_jual="' + ed_no_faktur.Text + '"', true);
  dm.laporan.LoadFromFile(dm.Path + 'laporan\gp_return_jual_rinci.fr3');
  dm.FRMemo(dm.laporan, 'Memo9').Text := MyTerbilang(dm.Q_print.fieldbyname('nilai_faktur').AsFloat)
    + 'Rupiah';
  dm.laporan.ShowReport;
end;

procedure Tf_returnJual.b_simpanClick(Sender: TObject);
var
  x, LQty: integer;
  LReturnJualRinci, kd_faktur: string;
  LSQL, LIsiHppAktif, LIsiStokOH: string;
  LKdBarang, LKdBarangs: string;
  LHppAktif: Currency;
begin
  if (ed_pelanggan.Text = '') or (ed_no_faktur.Text = '') or (ed_fak_jual.Text = '') then
  begin
    showmessage('Data Pelanggan dan no faktur harus di isi terlebih dahulu...');
    exit;
  end;

  if (ed_no_faktur.Color = clblue) then
  begin
    showmessage('no faktur ini sudah ada dalam database....');
    exit;
  end;

  if (ed_fak_jual.Color = clblue) then
  begin
    showmessage('no faktur Jual ini tidak ada dalam database....');
    exit;
  end;

  if tableview.DataController.RecordCount = 0 then
  begin
    showmessage('Data barang masih kosong...');
    exit;
  end;

  kd_faktur := ed_no_faktur.Text;

  for x := 0 to tableview.DataController.RecordCount - 1 do
  begin
    LKdBarang := TableView.DataController.GetDisplayText(x, 0);
    LQty := TableView.DataController.GetValue(x,2);
    LHppAktif := TableView.DataController.GetValue(x, 3);

    LReturnJualRinci := LReturnJualRinci + Format('("%s", "%s", "%s", '+
      '"%s", %d, %g, "%s", CURDATE()), ', [dm.kd_perusahaan, kd_faktur, LKdBarang,
      TableView.DataController.GetDisplayText(x, 1), LQty, Currency(TableView.DataController.GetValue(x, 4)),
      TableView.DataController.GetDisplayText(x, 5)]);

    LIsiHppAktif := LIsiHppAktif + Format('WHEN "%s" THEN (IFNULL(((hpp_aktif * stok_OH) + (%g * %d))/(stok_OH + %d), hpp_aktif)) ',
      [LKdBarang, LHppAktif, LQty, LQty]);

    LIsiStokOH := LIsiStokOH + Format('WHEN "%s" THEN (stok_OH + %d) ', [LKdBarang,
      LQty]);

    LKdBarangs := LKdBarangs + Format('"%s", ', [LKdBarang]);
  end;
  SetLength(LReturnJualRinci, length(LReturnJualRinci) - 2);
  SetLength(LKdBarangs, length(LKdBarangs) - 2);

  dm.db_conn.StartTransaction;
  try
    LSQL := Format('INSERT INTO tb_return_jual_global(kd_perusahaan, kd_return_jual, ' +
      'kd_transaksi, tgl_return_jual, kd_pelanggan, nilai_faktur, pengguna, simpan_pada, '+
      'pengawas) VALUES ("%s", "%s", "%s", CURDATE(), "%s", %g, "%s", NOW(), "%s")',
      [dm.kd_perusahaan, ed_no_faktur.Text, ed_fak_jual.Text, ed_pelanggan.Text,
      ed_nilai_faktur.Value, dm.kd_pengguna, dm.kd_operator]);

    fungsi.SQLExec(dm.Q_exe, LSQL, false);

    LSQL := Format('INSERT INTO tb_return_jual_rinci(kd_perusahaan, '
      + 'kd_return_jual, kd_barang, n_barang, qty_return_jual, ' +
      'harga_pokok, barcode, tgl_simpan) VALUES %s', [LReturnJualRinci]);

    fungsi.SQLExec(dm.Q_exe, LSQL, false);

    LSQL := Format('UPDATE tb_barang SET hpp_aktif = (CASE kd_barang %s END), '
      + 'stok_OH = (CASE kd_barang %s END), Tr_Akhir = date(now()) ' +
      'WHERE kd_perusahaan = "%s" AND kd_barang IN (%s)', [LIsiHppAktif,
      LIsiStokOH, dm.kd_perusahaan, LKdBarangs]);

    fungsi.SQLExec(dm.Q_exe, LSQL, false);

    LSQL := Format('UPDATE tb_piutang SET return_jual = return_jual + %g, `update`=CURDATE() '
      + 'WHERE kd_perusahaan = "%s" and faktur = "%s"', [ed_nilai_faktur.Value,
      dm.kd_perusahaan, ed_fak_jual.Text]);

    fungsi.SQLExec(dm.Q_exe, LSQL, false);

    dm.db_conn.Commit;

    showmessage('penyimpanan data berhasil...');

    ed_no_faktur.Clear;
    ed_no_faktur.Text := kd_faktur;
    b_print.SetFocus;

  except
    on E: exception do
    begin
      dm.db_conn.Rollback;
      messagedlg('proses penyimpanan gagal '#10#13'' + e.Message, mterror, [mbOk], 0);
    end;
  end;
end;

procedure Tf_returnJual.cekPiutang;
var
  awal, bayar, return, sisaHutang: integer;
begin
  ed_fak_jual.Color := clblue;

  fungsi.SQLExec(dm.Q_temp, 'select * from tb_piutang where faktur="' +
    ed_fak_jual.Text + '" and kd_perusahaan="' + dm.kd_perusahaan +
    '" and pelanggan = "' + ed_pelanggan.Text + '"', true);

  awal := dm.Q_temp.fieldbyname('piutang_awal').AsInteger;
  bayar := dm.Q_temp.fieldbyname('dibayar').AsInteger;
  return := dm.Q_temp.fieldbyname('return_jual').AsInteger;
  sisaHutang := awal - bayar - return;

  if sisaHutang > 0 then
    ed_fak_jual.Color := clwhite;
end;

procedure Tf_returnJual.ed_fak_jualChange(Sender: TObject);
begin
  cekPiutang;
end;

procedure Tf_returnJual.ed_codeKeyPress(Sender: TObject; var Key: Char);
var
  harga: real;
  kode: string;
  b: Integer;
begin
  if TableView.DataController.RecordCount = 0 then
    Exit;

  harga := TableView.DataController.GetValue(tableview.DataController.FocusedRecordIndex,3);

  kode := Ed_Code.Text;

  b := TableView.DataController.GetFocusedRecordIndex;

  if key = #43 then // tanda + (repeat)
  begin
    delete(kode, pos('+', kode), 1);
    ed_code.Clear;
    key := #0;

    if (StrToIntDef(kode, 0) = 0) or (Length(kode) = 0) then
      Exit;

    TableView.DataController.SetValue(b, 2, kode); //Qty
    TableView.DataController.SetValue(b, 4, harga * StrToFloatdef(kode, 0)); //total harga
  end;
end;

procedure Tf_returnJual.ed_no_fakturKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_return) and (b_auto.Enabled = True) then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    b_autoClick(self);
  end;
end;

procedure Tf_returnJual.ed_fak_jualKeyPress(Sender: TObject; var Key: Char);
begin
  if ed_pelanggan.Text = '' then
  begin
    Key := #0;
    ShowMessage('data Pelanggan harus diisi terlebih dahulu');
    ed_pelanggan.SetFocus;
    Exit;
  end;
end;

procedure Tf_returnJual.ed_pelangganChange(Sender: TObject);
begin
  ed_fak_jualChange(Self);
end;

end.

