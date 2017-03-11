unit u_trans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit,
  sCurrencyEdit, sLabel, ComCtrls, sStatusBar, DB, UFungsi, sSkinProvider,
  sMemo, ExtCtrls, sComboBox, Buttons, sSpeedButton, sPanel, sButton, printers,
  frxClass, cxStyles, cxCustomData, cxGraphics, cxDataStorage, cxEdit,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, uTerbilang, cxCalc,
  DateUtils, ActnList, sDialogs, MemDS,
  DBAccess, MyAccess, cxFilter, cxData;

const
  InputBoxMessage = WM_USER + 200;
  WM_AFTER_SHOW = WM_USER + 300; // custom message

type
  TF_Transaksi = class(TForm)
    Timer1: TTimer;
    Sb: TsStatusBar;
    p_pesan: TsPanel;
    pnlKode: TsPanel;
    Ed_Code: TsEdit;
    pnlFooter: TsPanel;
    sLabel9: TsLabel;
    sLabel8: TsLabel;
    sLabel7: TsLabel;
    sLabel6: TsLabel;
    sLabel5: TsLabel;
    sLabel4: TsLabel;
    sLabel3: TsLabel;
    sLabel2: TsLabel;
    sLabel10: TsLabel;
    sb_cari_pel: TsSpeedButton;
    L_nm_pel: TsLabel;
    L_Bayar: TsLabel;
    Ed_Sub: TsCurrencyEdit;
    Ed_Pelanggan: TsEdit;
    Ed_Lama: TsEdit;
    Ed_Kembali: TsCurrencyEdit;
    Ed_jatuh_tempo: TsEdit;
    Ed_Grand: TsCurrencyEdit;
    Ed_discRp: TsCurrencyEdit;
    Ed_BK: TsCurrencyEdit;
    Ed_Bayar: TsCurrencyEdit;
    cb_pending: TsComboBox;
    Cb_lama: TsComboBox;
    Grid: TcxGrid;
    TableView: TcxGridTableView;
    tv_pid: TcxGridColumn;
    tv_nama: TcxGridColumn;
    tv_qtyh: TcxGridColumn;
    tv_harga: TcxGridColumn;
    tv_diskon: TcxGridColumn;
    tv_netto: TcxGridColumn;
    tv_total_harga: TcxGridColumn;
    Level: TcxGridLevel;
    tv_satuan: TcxGridColumn;
    tv_diskonp: TcxGridColumn;
    tv_barcode1: TcxGridColumn;
    tv_barcode2: TcxGridColumn;
    tv_barcode3: TcxGridColumn;
    tv_hpp: TcxGridColumn;
    tv_total_hpp: TcxGridColumn;
    tv_total_laba: TcxGridColumn;
    tv_kd_satuan: TcxGridColumn;
    tv_void: TcxGridColumn;
    tv_Qty: TcxGridColumn;
    tv_no: TcxGridColumn;
    ed_discP: TsCurrencyEdit;
    b_simpan: TsButton;
    l_pesan: TsLabel;
    t_pesan: TTimer;
    sknprvdr1: TsSkinProvider;
    tv_ket: TcxGridColumn;
    actlst1: TActionList;
    ac_void: TAction;
    ac_Insert: TAction;
    ac_Batal: TAction;
    ac_Kunci: TAction;
    ac_Return: TAction;
    ac_Pending: TAction;
    ac_Load: TAction;
    ac_Group: TAction;
    ac_Satuan: TAction;
    ac_cetak: TAction;
    ac_skin: TAction;
    ac_close: TAction;
    ac_simpanfile: TAction;
    ac_loadfile: TAction;
    ac_jual_global: TAction;
    p_keterangan: TsPanel;
    ed_keterangan: TsEdit;
    l_7: TsLabel;
    Q_time: TMyQuery;
    ac_cek_update: TAction;
    pnlHeader: TsPanel;
    ed_Harga: TsCurrencyEdit;
    pnlPilihan: TsPanel;
    Lbl_5: TsLabel;
    Lbl_2: TsLabel;
    BtnInsert: TsButton;
    BtnVoid: TsButton;
    Lbl_3: TsLabel;
    BtnBatal: TsButton;
    BtnKunci: TsButton;
    Lbl_4: TsLabel;
    mm_nama: TsMemo;
    BtnReturn: TsButton;
    BtnPending: TsButton;
    BtnLoad: TsButton;
    BtnGroup: TsButton;
    BtnSatuan: TsButton;
    BtnCetak: TsButton;
    BtnPenjualanToko: TsButton;
    Btnsetting: TsButton;
    ac_setting: TAction;
    ac_cari_barang: TAction;
    BtnCariBarang: TsButton;
    ac_kartu_kredit: TAction;
    Btnkartu_kredit: TsButton;
    BtnDrawer: TsButton;
    BtnKeterangan: TsButton;
    ac_drawer: TAction;
    ac_keterangan: TAction;
    pnlRetailTunai: TPanel;
    BtnRetail: TsButton;
    BtnTunai: TsButton;
    ac_retail: TAction;
    ac_tunai: TAction;
    procedure FormShow(Sender: TObject);
    procedure Ed_CodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Ed_BayarChange(Sender: TObject);
    procedure Ed_BayarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Ed_SubChange(Sender: TObject);
    procedure Cb_lamaChange(Sender: TObject);
    procedure Ed_LamaChange(Sender: TObject);
    procedure sb_cari_pelClick(Sender: TObject);
    procedure Ed_PelangganKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Ed_CodeKeyPress(Sender: TObject; var Key: Char);
    procedure Ed_discPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormResize(Sender: TObject);
    procedure Ed_CodeChange(Sender: TObject);
    procedure Ed_CodeExit(Sender: TObject);
    procedure TableViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure TableViewDblClick(Sender: TObject);
    procedure
      TableViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText(Sender:
      TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: string);
    procedure Ed_discPExit(Sender: TObject);
    procedure Ed_discRpExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Ed_discRpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure b_simpanClick(Sender: TObject);
    procedure t_pesanTimer(Sender: TObject);
    procedure ac_InsertExecute(Sender: TObject);
    procedure ac_voidExecute(Sender: TObject);
    procedure ac_BatalExecute(Sender: TObject);
    procedure ac_KunciExecute(Sender: TObject);
    procedure ac_ReturnExecute(Sender: TObject);
    procedure ac_PendingExecute(Sender: TObject);
    procedure ac_LoadExecute(Sender: TObject);
    procedure ac_SatuanExecute(Sender: TObject);
    procedure ac_cetakExecute(Sender: TObject);
    procedure ac_closeExecute(Sender: TObject);
    procedure ac_jual_globalExecute(Sender: TObject);
    procedure Ed_PelangganChange(Sender: TObject);
    procedure ed_keteranganKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Cb_lamaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ac_GroupExecute(Sender: TObject);
    procedure ac_settingExecute(Sender: TObject);
    procedure ac_cari_barangExecute(Sender: TObject);
    procedure ac_kartu_kreditExecute(Sender: TObject);
    procedure ac_drawerExecute(Sender: TObject);
    procedure ac_keteranganExecute(Sender: TObject);
    procedure ac_tunaiExecute(Sender: TObject);
    procedure ac_retailExecute(Sender: TObject);
  private
    DebitId: Integer;
    DebitKode: string;
    DebitRp, CashOut: Currency;
    procedure baru;
    procedure simpan;
    procedure showdata;
    procedure ambil_form;
    procedure cek_update;
    procedure cetak_struk_kecil;
    procedure UpdateRetailTunai;
    function KasirOffline: Boolean;
    procedure UbahQty(Qty: string);
    procedure File2Tb(tb: TcxGridDataController; FileName: string);
    procedure Tb2File(tb: TcxGridDataController; FileName: string);
    procedure WmAfterShow(var Msg: TMessage); message WM_AFTER_SHOW;
    procedure InputBoxSetPasswordChar(var Msg: TMessage); message InputBoxMessage;
    procedure isi_table(baris: Integer; kolom: array of Integer; _isi: array of Variant);
  public
    // pesan
    PesanAktif: Integer;
    StylePesan: TFontStyles;
    PsBgColor, PsTextColor : TColor;
    Pesan, PsNamaFont : string;
    PsSizeFont, PsSpeedPesan: Integer;

    // Struk
    StJenis, StLebar : Integer;
    StPesan: TStrings;

    // retail/grosir, tunai/kredit
    FRetail, FTunai: Boolean;

    tahan, batas, piutang, lebar_layar: integer;
    Qty_real, QtyH: Integer;
    harga, harga_pokok, diskon: Currency;
    satuan, kode_barang, inputstring, passs, alasan, no_pending,
      harga_edit, KodeTransaksi, InsertHarga: string;
    diskonP: Real;
    days: array[1..7] of string;
    procedure awal;
    procedure input_kode;
    procedure aktifkan_pesan;
    procedure panel_auto_width;
    procedure kode_transaksi_terbaru;
    procedure cetak(kd_transaksi, jenis: string);
    procedure _set(baris, kolom, tipe: Integer; _isi: variant);
    function _get(baris, kolom: Integer; tipe: Integer = 1): variant;
  end;

const
  Values: array[Boolean] of string = ('0', '1');

var
  F_Transaksi: TF_Transaksi;

implementation

uses
  u_dm, U_ubah_satuan, U_Login, u_cariBarang, u_list_jual, u_hari,
  u_returnJual, u_cari, u_bayar, u_setting;

{$R *.dfm}

procedure TF_transaksi.panel_auto_width;
var
  x: integer;
  y: string;
begin
  for x := 0 to sb.Panels.Count - 1 do
  begin
    y := sb.Panels[x].text;
    sb.Panels[x].Width := sb.Canvas.TextWidth(y) + 30;
  end;
end;

procedure TF_transaksi.kode_transaksi_terbaru;
begin
  // memunculkan kode transaksi terbaru...
  fungsi.SQLExec(dm.Q_temp, Format('SELECT CONCAT("PJ", DATE_FORMAT(NOW(), "%%Y%%m%%d"), ' +
  'LPAD(COUNT(kd_transaksi) + 1, 4, "0")) AS new_id FROM tb_jual_global '+
  'WHERE DATE(tgl_transaksi) = DATE(NOW()) AND kd_perusahaan = "%s"', [dm.kd_perusahaan]),true);
  KodeTransaksi := dm.Q_temp.FieldByName('new_id').AsString;
  sb.Panels[9].Text := KodeTransaksi;
end;

procedure TF_transaksi.aktifkan_pesan;
begin
  lebar_layar := p_pesan.Width;
  p_pesan.Height := 0;
  p_pesan.Color := PsBgColor;
  l_pesan.Font.Name := PsNamaFont;
  l_pesan.Font.Color := PsTextColor;
  l_pesan.Font.Size := PsSizeFont;
  l_pesan.Font.Style := StylePesan;
  l_pesan.Left := lebar_layar;
  l_pesan.Caption := pesan;

  t_pesan.Interval := PsSpeedPesan;
  t_pesan.Enabled := True;
end;

procedure TF_transaksi.ambil_form;
begin
 // pesan berjalan
  pesan := fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'pesan',
    'Promosi harus dilakukan untuk mempercepat penjualan barang...');
  p_pesan.Height := 0;

  PsNamaFont :=fungsi.AmbilIniFile(dm.file_ini,'kasir', 'nama_font', 'Arial');
  PsBgColor := StringToColor(fungsi.AmbilIniFile(dm.file_ini, 'kasir',
    'bg_font', 'clBlue'));
  PsTextColor := StringToColor(fungsi.AmbilIniFile(dm.file_ini, 'kasir',
    'cl_font', 'clWhite'));
  PsSizeFont := StrToInt(fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'size_font', '20'));
  PsSpeedPesan := StrToInt(fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'speed', '20'));
  PesanAktif := StrToIntDef(fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'pesan_aktif'), 0);

  StylePesan := TFontStyles(Byte(StrToInt(fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'style_font', '1'))));

  // (retail grosir) (tunai kredit) dan tambahan
  FRetail:= fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'retail', '1') <> '0';
  FTunai:= fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'tunai', '1') <> '0';
  UpdateRetailTunai;
  
  InsertHarga := fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'tambahan', '100');

  StJenis := StrToInt(fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'jenis_struk', '0'));
  StLebar := StrToInt(fungsi.AmbilIniFile(dm.file_ini, 'kasir', 'lebar_struk', '38'));
  StPesan.DelimitedText := fungsi.AmbilIniFile(dm.file_ini, 'kasir',
    'footer_struk', 'TERIMA KASIH ATAS KUNJUANGAN ANDA');
end;

procedure TF_transaksi.WmAfterShow(var Msg: TMessage);
begin
  dm.sm.Active := true;

  ambil_form;

  application.CreateForm(tF_login, f_login);
  f_login.ShowModal;
  
  if not(dm.Login) then Application.Terminate;
end;

procedure TF_transaksi._set(baris, kolom, tipe: Integer; _isi: variant);
begin
  case tipe of
    1:
      TableView.DataController.SetValue(TableView.DataController.GetFocusedRecordIndex,
        kolom, _isi);
    2:
      TableView.DataController.SetValue(TableView.DataController.RecordCount + 1,
        kolom, _isi);
    3:
      TableView.DataController.SetValue(baris, kolom, _isi);
  end;
end;

function TF_transaksi._get(baris, kolom, tipe: Integer): variant;
begin
  case tipe of
    1:
      Result := TableView.DataController.GetValue(TableView.DataController.GetFocusedRecordIndex,
        kolom);
    2:
      Result := TableView.DataController.GetValue(TableView.DataController.RecordCount
        + 1, kolom);
    3:
      Result := TableView.DataController.GetValue(baris, kolom);
  end;
end;

procedure TF_transaksi.awal;
begin
  tableview.DataController.RecordCount := 0;

  p_keterangan.Visible := False;

  ed_keterangan.Clear;
  mm_nama.Lines.Clear;
  ed_code.Clear;
  ed_sub.Value := 0;
  ed_discp.Value := 0;
  ed_pelanggan.Text := 'CU-0001';
  l_nm_pel.Caption := 'UMUM';
  ed_lama.Text := '0';

  ed_bayar.Value := 0;
  ed_kembali.Value := 0;
  ed_bayar.ReadOnly := true;
  ed_discP.ReadOnly := true;

  DebitId := 0;
  DebitKode := '';
  DebitRp := 0;
  CashOut := 0;
end;

procedure TF_Transaksi.FormShow(Sender: TObject);
begin
  sb.Panels[1].Text := 'Versi: ' + fungsi.GetVersiApp;

  sb.Panels[2].Text := dm.db_conn.Database + '@' + dm.db_conn.Server;

  panel_auto_width;

  PostMessage(Self.Handle, WM_AFTER_SHOW, 0, 0);
end;

procedure TF_Transaksi.isi_table(baris: Integer; kolom: array of Integer; _isi:
  array of Variant);
var
  i: Integer;
begin
  for i := 0 to High(kolom) do
    _Set(baris, kolom[i], 3, _isi[i]);
end;

procedure TF_Transaksi.baru;
var
  baris_baru: Integer;
begin
  ed_bayar.ReadOnly := false;
  ed_discP.ReadOnly := false;

  fungsi.SQLExec(dm.Q_Temp, 'select n_singkat from tb_satuan where kd_satuan=' +
    satuan + '', true);

  baris_baru := tableview.DataController.RecordCount + 1;
  tableview.DataController.RecordCount := baris_baru;
  _Set(baris_baru - 1, 0, 3, baris_baru);                                           // no
  _Set(baris_baru - 1, 1, 3, dm.Q_show.FieldByName('kd_barang').AsString);          // PID
  _Set(baris_baru - 1, 2, 3, dm.Q_show.FieldByName('n_barang').AsString);           // deskripsi barang
  _Set(baris_baru - 1, 3, 3, 1);                                                    // Qty H
  _Set(baris_baru - 1, 4, 3, dm.Q_temp.FieldByName('n_singkat').AsString);          // satuan
  _Set(baris_baru - 1, 5, 3, harga);                                                // harga
  _Set(baris_baru - 1, 6, 3, diskonP);                                              // diskon %
  _Set(baris_baru - 1, 7, 3, diskon);                                               // diskon Rp
  _Set(baris_baru - 1, 8, 3, harga - diskon);                                       // netto
  _Set(baris_baru - 1, 9, 3, harga - diskon);                                       // total harga
  _Set(baris_baru - 1, 10, 3, dm.Q_show.FieldByName('barcode1').AsString);           // barcode 1
  _Set(baris_baru - 1, 11, 3, dm.Q_show.FieldByName('barcode2').AsString);           // barcode 2
  _Set(baris_baru - 1, 12, 3, dm.Q_show.FieldByName('barcode3').AsString);           // barcode 3
  _Set(baris_baru - 1, 13, 3, harga_pokok); //hpp                                    // hpp
  _Set(baris_baru - 1, 14, 3, harga_pokok * Qty_real); //total harga pokok           // total hpp
  _Set(baris_baru - 1, 15, 3, _get(baris_baru - 1, 9, 3) - _get(baris_baru - 1,
    14, 3)); // total laba
  _Set(baris_baru - 1, 16, 3, satuan);                                               // kd satuan
  _Set(baris_baru - 1, 17, 3, 0);                                                    // void
  _Set(baris_baru - 1, 18, 3, Qty_real);                                             // Qty real
  _Set(baris_baru - 1, 19, 3, 'NB: ');                                               // keterangan

  tableview.DataController.ChangeFocusedRowIndex(baris_baru);
end;

procedure TF_Transaksi.showdata;
var
  x, banyak, f: integer;
  tanggal, awal, ahir: TDate;
  LDiskonRp : Currency;
begin
  awal := dm.Q_show.FieldByName('awal').AsDateTime;
  ahir := dm.Q_show.FieldByName('ahir').AsDateTime;
  banyak := DaysBetween(awal, ahir) + 1;
  tanggal := dm.Q_show.FieldByName('awal').AsDateTime - 1;

  for x := 0 to banyak do
  begin
    tanggal := tanggal + 1;
    if FormatDateTime('dd/MM/yyyy', Date()) = FormatDateTime('dd/MM/yyyy', tanggal) then
    begin
      LDiskonRp := dm.Q_show.FieldByName('diskon').AsCurrency;
      diskonP := ((LDiskonRp * 100) / dm.Q_show.FieldByName('harga_jual3').AsCurrency);
      Break;
    end
    else
    begin
      LDiskonRp := 0;
      diskonP := 0;
    end;
  end;

  if (kode_barang = dm.Q_show.FieldByName('kd_barang').AsString) or (kode_barang
    = dm.Q_show.FieldByName('barcode3').AsString) then
  begin
    harga := dm.Q_show.FieldByName('harga_jual3').AsInteger;
    Qty_real := 1;
    diskon := LDiskonRp;
    satuan := dm.Q_show.FieldByName('kd_sat3').AsString;
  end
  else if kode_barang = dm.Q_show.FieldByName('barcode2').AsString then
  begin
    harga := dm.Q_show.FieldByName('harga_jual2').AsInteger;
    Qty_real := dm.Q_show.FieldByName('Qty2').AsInteger;
    diskon := LDiskonRp * Qty_real;
    satuan := dm.Q_show.FieldByName('kd_sat2').AsString;
  end
  else if kode_barang = dm.Q_show.FieldByName('barcode1').AsString then
  begin
    harga := dm.Q_show.FieldByName('harga_jual1').AsInteger;
    Qty_real := dm.Q_show.FieldByName('Qty2').AsInteger * dm.Q_show.FieldByName('Qty1').AsInteger;
    diskon := LDiskonRp * Qty_real;
    satuan := dm.Q_show.FieldByName('kd_sat1').AsString;
  end;

  harga_pokok := dm.Q_show.FieldByName('harga_pokok').AsInteger; // harga pokok barang

  if tableview.DataController.RecordCount <> 0 then
  begin
    for f := 0 to tableview.DataController.RecordCount - 1 do
    begin
      if (pos(_Get(f, 1, 3), kode_barang) > 0) or (pos(_Get(f, 10, 3),
        kode_barang) > 0) or (pos(_Get(f, 11, 3), kode_barang) > 0) or (pos(_Get
        (f, 12, 3), kode_barang) > 0) then
      begin
        if (_Get(f, 16, 3) = satuan) and (_Get(f, 17, 3) = 0) then
        begin
          QtyH := _Get(f, 3, 3) + 1;
          _set(f, 3, 3, QtyH);                                                   //QtyH
          _set(f, 9, 3, _Get(f, 8, 3) * QtyH);                                    //total harga
          _set(f, 14, 3, _Get(f, 13, 3) * Qty_real * QtyH);                          //total harga pokok
          _set(f, 15, 3, _Get(f, 9, 3) - _Get(f, 14, 3));                            //total laba
          _set(f, 18, 3, Qty_real * QtyH); //Qty_real
          tableview.DataController.ChangeFocusedRowIndex(f);

          exit;
        end;
      end;
    end;
  end;

  baru;
end;

procedure TF_Transaksi.input_kode;
var
  kode_temp: string;
begin
  if kode_barang = '' then
  begin
    Ed_Discp.SetFocus;
    Exit;
  end;

  if f_cariBarang <> nil then
  begin
    f_cariBarang.Close;
  end;

  if KasirOffline then
  begin
    ShowMessage('Tidak Dapat Menambah Data Barang...'#10#13'Kasir Sudah Melakukan TUTUP KASIR....');
    Exit;
  end;

  fungsi.sqlExec(dm.Q_temp, 'SELECT kd_barang FROM tb_barang ' +
    'WHERE (kd_barang = "' + kode_barang + '" OR tb_barang.barcode3 = "' +
    kode_barang + '" OR barcode2 = "' + kode_barang + '" OR barcode1 = "' +
    kode_barang + '") AND kd_perusahaan= "' + dm.kd_perusahaan + '"', true);

  kode_temp := dm.Q_temp.fieldbyname('kd_barang').AsString;

  fungsi.sqlExec(dm.Q_Show, 'SELECT tb_barang.kd_barang, tb_barang.n_barang, ' +
    'tb_barang.barcode1,tb_barang.barcode2,tb_barang.barcode3,tb_barang.hpp_aktif as harga_pokok, ' +
    'tb_barang_harga.harga_jual1,tb_barang_harga.harga_jual2,tb_barang_harga.harga_jual3, ' +
    'tb_barang_harga.diskon,tb_barang_harga.awal, ' +
    'tb_barang_harga.ahir,tb_barang.kd_sat1,tb_barang.kd_sat2, ' +
    'tb_barang.kd_sat3,tb_barang.qty1,tb_barang.qty2 ' +
    'FROM tb_barang INNER JOIN tb_barang_harga ON tb_barang.kd_barang=tb_barang_harga.kd_barang ' +
    'AND tb_barang_harga.kd_perusahaan = tb_barang.kd_perusahaan WHERE tb_barang.kd_barang = "' +
    kode_temp + '" ' + 'AND tb_barang_harga.kd_macam_harga = "' + dm.macam_harga
    + '" AND tb_barang.aktif="Y" ' + 'AND tb_barang.kd_perusahaan= "' + dm.kd_perusahaan
    + '"', true);

  if dm.Q_show.Eof then
  begin
    MessageDlg('Barang dengan kode ' + kode_barang + ' TIDAK DITEMUKAN' + #13 +
      #10 + 'Barang ' + 'belum dimasukkan atau harga belum diatur' + #13 + #10 +
      'Hubungi Operator gudang untuk mengatur barang ini...', mtError, [mbOK], 0);
    Ed_Code.Clear;
    Exit;
  end;

  if MM_nama.Text = 'TERKUNCI' then
  begin
    if kode_barang = '' then
      Exit;
    ShowMessage('PID' +#9+ ': ' + dm.Q_show.fieldbyname('kd_barang').asstring + sLineBreak +
      'Deskripsi' +#9+ ': ' + dm.Q_show.fieldbyname('n_barang').asstring + sLineBreak +
      'Barcode' +#9+ ': ' + dm.Q_show.fieldbyname('barcode3').asstring + sLineBreak +
      'Harga 1' +#9+ ': ' + dm.Q_show.fieldbyname('harga_jual1').asstring + sLineBreak +
      'Harga 2' +#9+ ': ' + dm.Q_show.fieldbyname('harga_jual2').asstring + sLineBreak +
      'Harga 3' +#9+ ': ' + dm.Q_show.fieldbyname('harga_jual3').asstring);
    Exit;
  end;

  fungsi.SQLExec(dm.Q_temp,
    'select kd_barang from tb_koreksi_temp where kd_barang =' + quotedstr(kode_temp)
    + ' and kd_perusahaan=' + quotedstr(dm.kd_perusahaan) + '', True);
  if dm.Q_temp.RecordCount <> 0 then
  begin
    Ed_Code.Clear;

    MessageBox(0, 'BARANG INI BELUM BISA DI TRANSAKSIKAN, ' + #13 + #10 +
      'karena masih ' + 'dalam proses STOCK OPNAME...' + #13 + #10 + '', '',
      MB_ICONWARNING or MB_OK);
    Exit;
  end;

  showdata;

  Ed_Code.Clear;
end;

procedure TF_Transaksi.Ed_CodeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // untuk insert harga
  if (key = vk_insert) then
  begin
    ac_InsertExecute(Self);
  end;

  // untuk void per barang
  if ((shift = [ssctrl]) and (key = vk_delete)) then
  begin
    ac_voidExecute(Self);
  end;

  // untuk menambahkan barang ke table
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    input_kode;
  end;

  if f_cariBarang <> nil then
  begin
    if key = vk_up then
    begin
      dm.Q_cari.Prior;
      kode_barang := dm.Q_cari.fieldbyname('kd_barang').AsString;
      key := VK_NONAME;
    end;

    if key = vk_down then
    begin
      dm.Q_cari.Next;
      kode_barang := dm.Q_cari.fieldbyname('kd_barang').AsString;
    end;
  end;
end;

procedure TF_Transaksi.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  // untuk keluar dari form
  if key = vk_escape then
  begin
    if f_cariBarang <> nil then
    begin
      f_cariBarang.Close;
      Ed_Code.Clear;
      Exit;
    end;
    if (TableView.DataController.RecordCount <> 0) or (cb_pending.Visible = true) then
      exit
    else
      ac_closeExecute(Self);
  end;

  // menampilkan pilihan
  if key = vk_f1 then
  begin
    pnlPilihan.Visible := not(pnlPilihan.Visible);
  end;

  // untuk mencari barang
  if key = vk_f2 then
  begin
    ac_cari_barangExecute(Self);
  end;

  // membuka form setting
  if key = vk_f3 then
  begin
    ac_settingExecute(Self);
  end;

  // return jual
  if (key = vk_f4) then
  begin
    ac_ReturnExecute(Self);
  end;

  //  pending transaksi
  if key = vk_f5 then
  begin
    ac_PendingExecute(Self);
  end;

  // memunculkan pending transaksi
  if key = vk_f6 then
  begin
    ac_LoadExecute(Self);
  end;

  // memunculkan pencarian group barang
  if key = vk_f7 then
  begin
    ac_GroupExecute(Self);
  end;

  // ubah satuan
  if key = vk_f8 then
  begin
    TableViewDblClick(Sender);
  end;

  // F9 untuk buka form penjualan
  if key = vk_f9 then
  begin
    ac_jual_globalExecute(Self);
  end;

  // F10 untuk open cash drawer
  if key = vk_f10 then
  begin
    ac_drawerExecute(Self);
  end;

  // cetak ulang;
  if key = vk_f11 then
    ac_cetakExecute(Self);

  // untuk menampilkan pembayaran pakai kartu (kredit / debit).
  if key = vk_f12 then
  begin
    ac_kartu_kreditExecute(Self);
  end;

  // Ctrl + K untuk memasukkan keterangan.
  if (shift = [ssCTRL]) and (key = 75) then
  begin
    ac_keteranganExecute(Self);
  end;

  // Ctrl + L untuk mengunci transaksi
  if (shift = [ssCTRL]) and (key = 76) then
  begin
    ac_KunciExecute(Self);
  end;

  // ctrl + R untuk pindah Retail/Grosir
  if ((shift = [ssctrl]) and (key = 82)) then
  begin
    ac_retailExecute(Self);
  end;

  // ctrl + T untuk pindah Tunai/Kredit
  if ((shift = [ssctrl]) and (key = 84)) then
  begin
    ac_tunaiExecute(Self);
  end;

  // shift + del untuk membatalkan transaksi
  if ((shift = [ssshift]) and (key = vk_delete)) then
  begin
    ac_BatalExecute(Self);
  end;

  // untuk pindah kursor pada tabel transaksi.
  if f_cariBarang = nil then
  begin
    if (TableView.DataController.FocusedRecordIndex < TableView.DataController.RecordCount
      - 1) and (key = vk_down) then
    begin
      tableview.DataController.ChangeFocusedRowIndex(TableView.DataController.FocusedRecordIndex
        + 1);
    end;

    if (TableView.DataController.GetFocusedRecordIndex > 0) and (key = vk_up) then
    begin
      tableview.DataController.ChangeFocusedRowIndex(TableView.DataController.FocusedRecordIndex
        - 1);
    end;
  end;
end;

procedure TF_Transaksi.Timer1Timer(Sender: TObject);
begin
  days[1] := 'Minggu';
  days[2] := 'Senin';
  days[3] := 'Selasa';
  days[4] := 'Rabu';
  days[5] := 'Kamis';
  days[6] := 'Jumat';
  days[7] := 'Sabtu';

  try
    fungsi.SQLExec(Q_time, 'select now() as sekarang', True);

    sb.Panels[6].Text := days[DayOfWeek(Q_time.fieldbyname('sekarang').AsDateTime)];
    sb.Panels[7].Text := formatdatetime('dd mmm yyyy', Q_time.fieldbyname('sekarang').AsDateTime);
    sb.Panels[8].Text := FormatDateTime('hh:nn:ss', Q_time.fieldbyname('sekarang').AsDateTime);
  except
    Timer1.Enabled := False;
    if (MessageDlg('KONEKSI TERPUTUS DENGAN SERVER...' + #13 + #10 + 'coba ' +
      'hubungkan kembali??????', mtWarning, [mbOK], 0) = mrOk) then
    begin
      Timer1.Enabled := True;
    end;
  end;

  if sb.Panels[8].Text >= '23:59:00' then
  begin
    if f_hari = nil then
    begin
      Application.CreateForm(Tf_hari, f_hari);
      f_hari.ShowModal;
    end;
  end
  else
  begin
    if f_hari <> nil then
      f_hari.Close;
  end;
end;

procedure TF_Transaksi.Ed_BayarChange(Sender: TObject);
begin
  if pnlFooter.Visible = False then
    Exit;

  if ed_bayar.Value <> 0 then
  begin
    Ed_Bayar.SetFocus;
    L_Bayar.Caption := 'BAYAR';
    Ed_BK.Text := Ed_Bayar.Text;
    L_Bayar.Visible := true;
    Ed_Bk.Visible := true;
    ed_bk.Font.Color := clblue;
  end
  else
  begin
    L_Bayar.Visible := false;
    Ed_Bk.Visible := false;
  end;
end;

procedure TF_Transaksi.Ed_BayarKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if l_bayar.Visible = true then
    begin
      if L_bayar.Caption = 'BAYAR' then
      begin
        if ed_bayar.Value < Ed_grand.Value then
        begin
          showmessage('Uang yang dibayar belum cukup'#10#13'Masukkan Pembayaran lagi...');
          ed_code.SetFocus;
          ed_bayar.Value := 0;
          ed_bayar.SetFocus;
        end
        else
        begin
          ed_Kembali.Value := ed_bayar.Value - ed_grand.Value;
          L_Bayar.Caption := 'KEMBALI';
          Ed_BK.Value := Ed_Kembali.Value;
          ed_bk.Font.Color := clred;
        end;
      end
      else
      begin
        if not(FRetail) then
        begin
          Ed_Pelanggan.SetFocus;
        end
        else
          simpan;
      end;
    end;
  end;
end;

procedure TF_Transaksi.Ed_SubChange(Sender: TObject);
begin
  Ed_discRp.MaxValue := Ed_Sub.Value;
  Ed_DiscRp.Value := (ed_sub.Value * Ed_DiscP.Value) / 100;
  Ed_Grand.Value := ed_sub.Value - ed_discRp.Value;
  Ed_Harga.Text := Ed_grand.Text;
end;

procedure TF_Transaksi.Cb_lamaChange(Sender: TObject);
begin
  if cb_lama.Text = 'Custom...' then
  begin
    Ed_Lama.Enabled:= True;
    ed_Lama.SetFocus;
  end
  else
  begin
    Ed_Lama.Enabled:= False;
    if cb_lama.Text = '1 Minggu' then
      ed_Lama.Text := '7';
    if cb_lama.Text = '2 Minggu' then
      ed_Lama.Text := '14';
    if cb_lama.Text = '3 Minggu' then
      ed_Lama.Text := '21';
    if cb_lama.Text = '4 Minggu' then
      ed_Lama.Text := '28';
    if cb_lama.Text = '1 Bulan' then
      ed_Lama.Text := '30';
  end;
end;

procedure TF_Transaksi.Ed_LamaChange(Sender: TObject);
begin
  if ed_lama.Text = '' then
  begin
    ed_lama.Text := '1';
    ed_code.SetFocus;
    ed_Lama.SetFocus;
  end;
  Ed_jatuh_tempo.Text := formatdatetime('dd/MM/yyyy', now() + strtofloat(ed_lama.Text));
end;

procedure TF_Transaksi.sb_cari_pelClick(Sender: TObject);
begin
  application.CreateForm(tf_cari, f_cari);
  with F_cari do
  try
    _SQLi := 'SELECT kd_pelanggan, n_pelanggan, `limit`, piutang ' +
      'FROM vw_pelanggan where kd_perusahaan="' + dm.kd_perusahaan + '"';
    tblcap[0] := 'Kode';
    tblCap[1] := 'Nama Pelanggan';
    tblCap[2] := 'Limit';
    tblCap[3] := 'Piutang';
    if ShowModal = mrOk then
    begin
      Ed_Pelanggan.Text := TblVal[0];
      L_nm_pel.Caption := TblVal[1];
    end;
  finally
    close;
  end;
end;

procedure TF_Transaksi.Ed_PelangganKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if Cb_lama.Visible = True then
      Cb_lama.SetFocus
    else
      b_simpan.SetFocus;
  end;

  if key = vk_insert then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    sb_cari_pelClick(Sender);
  end;
end;

procedure TF_Transaksi.simpan;
var
  x: integer;
  LSQL, LJualRinci: string;
begin
  if KasirOffline then
  begin
    ShowMessage('TRANSAKSI TIDAK DAPAT DISIMPAN'#10#13'Kasir Sudah Melakukan TUTUP KASIR....');
    Exit;
  end;

  kode_transaksi_terbaru;

  for x := 0 to TableView.DataController.RecordCount - 1 do
  begin
    LJualRinci := LJualRinci + Format('("%s", "%s", %d, "%s", "%s", %d, "%s", '+
      '%g, "%g", "%g", "%d", "%d", "%s", CURDATE()), ', [dm.kd_perusahaan, KodeTransaksi,
      (x + 1), _get(x, 1, 3), _get(x, 2, 3), Integer(_get(x, 18, 3)), _get(x, 16, 3),
      Currency(_get(x, 14, 3)), Currency(_get(x, 5, 3)), Currency(_get(x, 7, 3)),
      Integer(_get(x, 17, 3)), Integer(_get(x, 3, 3)), _get(x, 19, 3)]);

  end;
  SetLength(LJualRinci, length(LJualRinci) - 2);

  dm.db_conn.StartTransaction;
  try
    LSQL := Format('INSERT INTO tb_jual_global (kd_perusahaan, kd_transaksi, '
      + 'tgl_transaksi, jam_transaksi, kd_customers, tunai, jatuh_tempo, kd_macam_harga, '
      + 'sub_total,discountGP, discountGRP, HPP, grand_total, bayar, debit_id, debit_code, '
      + 'debit, cash_out, kembali, kd_user, kd_pengawas, cetak, void, komp, ket, '
      + 'simpan_pada) VALUES ("%s", "%s", CURDATE(), CURTIME(), "%s", "%s", '
      + 'ADDDATE(date(now()),INTERVAL %s DAY), "%s", %g, %g, %g, %g, %g, %g, %d, "%s", '+
      '%g, %g, %g, "%s", "%s", 1, %d, "%s", "%s", NOW())',
      [dm.kd_perusahaan, KodeTransaksi, ed_pelanggan.Text, Values[FTunai], ed_lama.Text,
      dm.macam_harga, ed_sub.Value, ed_discP.Value, ed_discRp.Value,
      Currency(TableView.DataController.Summary.FooterSummaryValues[8]), ed_grand.Value,
      ed_bayar.Value, DebitId, DebitKode, DebitRp, CashOut, ed_kembali.Value, dm.kd_pengguna,
      dm.kd_operator, Integer(TableView.DataController.Summary.FooterSummaryValues[9]), dm.ip_kasir,
      ed_keterangan.Text]);
      
    fungsi.SQLExec(dm.Q_exe, LSQL, false);

    LSQL := Format('INSERT INTO tb_jual_rinci (kd_perusahaan, no_transaksi, urut, ' +
      'kd_barang, n_barang, Qty, kd_satuan, harga_pokok, harga_jual, discountRp, ' +
      'void_barang, QtyH, ket, tgl_simpan) '+
      'VALUES %s', [LJualRinci]);

    fungsi.SQLExec(dm.Q_exe, LSQL, False);

    if not(FTunai) then
    begin
      fungsi.SQLExec(dm.Q_exe,
        'insert into tb_piutang(kd_perusahaan,faktur,tanggal,jatuh_tempo, ' +
        'pelanggan,piutang_awal,dibayar,user) values ("' + dm.kd_perusahaan +
        '","' + KodeTransaksi + '",date(now()),"' + ed_lama.Text + '","' +
        ed_pelanggan.Text + '","' + ed_grand.Text + '","' + '0' + '","' + dm.kd_pengguna
        + '")', false);
    end;

    dm.db_conn.Commit;
    fungsi.OpenCashDrawer;
  except
    on E: exception do
    begin
      dm.db_conn.Rollback;
      messagedlg('proses penyimpanan gagal,ulangi lagi!!! '#10#13'' + e.Message,
        mterror, [mbOk], 0);
      Exit;
    end;
  end;

  if messagedlg('Data berhasil disimpan...'#10#13'Apakah transaksi akan dicetak?',
    mtConfirmation, [mbYes, mbNo], 0) = mryes then
  begin
    if StJenis = 1 then
      cetak(KodeTransaksi, 'besar')
    else
      cetak(KodeTransaksi, 'kecil')
  end
  else
    fungsi.SQLExec(dm.Q_exe,
      'update tb_jual_global set cetak=0 where kd_transaksi="' + KodeTransaksi
      + '" and kd_perusahaan="' + dm.kd_perusahaan + '"', false);

  AWAL;

  ed_code.SetFocus;
end;

procedure TF_Transaksi.cetak_struk_kecil;
var
  toko, alamat, telp, kd_transaksi, kasir, cust, waktu, barang, barang2, satuan,
    har_sat, harga, discP, discRp, netto, discGP, discGRp, nettoG, total, bayar,
    kembali, void, kaki, tgl_trans: string;
  NonTunai, TarikTunai, TotalDebit: string;
  i, j, x, panjang, TotalDebitRp: integer;
  F: TextFile;
begin
  panjang := StLebar;

  kd_transaksi := fungsi.TulisFormat(dm.Q_print.fieldbyname('no_transaksi').AsString,
    panjang, taLeftJustify);
  kasir := fungsi.TulisFormat(dm.Q_print.fieldbyname('n_user').AsString, panjang,
    taLeftJustify);
  cust := fungsi.TulisFormat(dm.Q_print.fieldbyname('n_pelanggan').AsString,
    panjang, taLeftJustify);
  tgl_trans := FormatDateTime('dd mmm yyyy', dm.Q_print.fieldbyname('tgl_transaksi').AsDateTime);
  waktu := fungsi.TulisFormat({days[DayOfWeek(StrToDate(tgl_trans))]+', '+}
    tgl_trans + ' ' + dm.Q_print.fieldbyname('jam_transaksi').AsString, panjang,
    taLeftJustify);

  AssignFile(F, dm.AppPath + 'k_struk.prn');
  Rewrite(F);

  for i := 1 to panjang do
    write(F, '=');
  Writeln(F, '');

  write(F, 'kd Trans. : ');
  Writeln(F, kd_transaksi);
  write(F, 'Kasir     : ');
  Writeln(F, kasir);
  write(F, 'Cust.     : ');
  Writeln(F, cust);
  write(F, 'Tgl/Jam   : ');
  Writeln(F, waktu);

  for i := 1 to panjang do
    write(F, '-');
  Writeln(F, '');

  for i := 0 to dm.Q_print.RecordCount - 1 do
  begin
    x := x + dm.Q_print.fieldbyname('QtyH').AsInteger;

    barang := fungsi.TulisFormat(dm.Q_print.fieldbyname('n_barang').AsString, (panjang
      + 1) - Length(inttostr(i + 1) + '. '), taLeftJustify);
    write(F, inttostr(i + 1) + '. ');
    writeln(F, barang);

    if (Length(dm.Q_print.fieldbyname('n_barang').AsString) + Length(inttostr(i
      + 1) + '. ')) > panjang then
    begin
      barang2 := dm.Q_print.fieldbyname('n_barang').AsString;
      Delete(barang2, 1, panjang - Length(inttostr(i + 1) + '. '));
      barang2 := fungsi.TulisFormat(barang2, panjang, taLeftJustify);
      for j := 1 to Length(inttostr(i + 1) + '. ') do
        write(F, ' ');
      Writeln(F, barang2)
    end;

    har_sat := fungsi.TulisFormat(floattostrf(dm.Q_print.fieldbyname('harga_jual').AsFloat,
      ffNumber, 10, 0) + ' X', 17, tarightjustify);
    satuan := fungsi.TulisFormat(dm.Q_print.fieldbyname('QtyH').AsString + ' ' +
      dm.Q_print.fieldbyname('n_singkat').AsString + ' =', 10, tarightjustify);
    write(F, har_sat);
    write(F, satuan);
    harga := fungsi.TulisFormat(floattostrf(dm.Q_print.fieldbyname('harga_jual').AsFloat
      * dm.Q_print.fieldbyname('QtyH').AsFloat, ffNumber, 10, 0), panjang -
      Length(har_sat) - length(satuan), taRightJustify);
    writeln(F, harga);

    if dm.Q_print.FieldByName('discountRp').AsInteger <> 0 then
    begin
      for j := 1 to Length(inttostr(i + 1) + '. ') do
        write(F, ' ');

      discP := 'DISC (' + dm.Q_print.fieldbyname('discountP').AsString + ' %): ';
      discRp := fungsi.TulisFormat(FloatToStrF(dm.Q_print.FieldByName('discountRp').AsFloat
        * dm.Q_print.fieldbyname('QtyH').AsFloat, ffNumber, 10, 0) + ' =', 27 -
        Length(discP) - Length(inttostr(i + 1) + '. '), tarightjustify);
      netto := fungsi.TulisFormat(floattostrf(dm.Q_print.fieldbyname('total_harga').AsFloat,
        ffNumber, 10, 0), panjang - Length(har_sat) - length(satuan), taRightJustify);
      write(F, discP);
      Write(F, discRp);
      Writeln(F, netto);
    end;

    dm.Q_print.Next;
  end;

  for i := 1 to panjang do
    write(F, '-');
  Writeln(F, '');

  void := fungsi.TulisFormat('Item: ' + inttostr(dm.Q_print.RecordCount) +
    ', Qty: ' + inttostr(x) + ', Void: ' + dm.Q_print.fieldbyname('void').AsString,
    panjang, tacenter);
  Writeln(F, void);
  Writeln(F, '');

  Total := fungsi.TulisFormat(floattostrf(dm.Q_print.fieldbyname('sub_total').AsFloat,
    ffNumber, 10, 0), panjang - 13, tarightjustify);

  write(F, 'Total       :');
  Writeln(F, total);

  if dm.Q_print.FieldByName('discountGRp').AsInteger <> 0 then
  begin
    discGP := 'DISKON (' + dm.Q_print.fieldbyname('discountGP').AsString + '%) ';
    discGRp := FloatToStrF(dm.Q_print.FieldByName('discountGRp').AsFloat,
      ffNumber, 10, 0);
    nettoG := fungsi.TulisFormat('= ' + FloatTostrF(dm.Q_print.fieldbyname('grand_total').AsFloat,
      ffNumber, 10, 0), panjang - Length(discGp) - length(discGRp), taRightJustify);
    write(F, discGP);
    Write(F, discGRp);
    Writeln(F, nettoG);
  end;

  if dm.Q_print.FieldByName('debit').AsInteger <> 0 then
  begin
    NonTunai := fungsi.TulisFormat(FloatToStrF(dm.Q_print.FieldByName('debit').AsFloat,
      ffNumber, 10, 0), panjang - 13, taRightJustify);
    write(F, 'Non Tunai   :');
    Writeln(F, NonTunai);
    if dm.Q_print.FieldByName('cash_out').AsInteger <> 0 then
    begin
      TarikTunai := fungsi.TulisFormat(FloatToStrF(dm.Q_print.FieldByName('cash_out').AsFloat,
        ffNumber, 10, 0), panjang - 13, taRightJustify);
      write(F, 'Tarik Tunai :');
      Writeln(F, TarikTunai);
      TotalDebitRp := dm.Q_print.FieldByName('debit').AsInteger + dm.Q_print.FieldByName
        ('cash_out').AsInteger;
      TotalDebit := fungsi.TulisFormat(FloatToStrF(TotalDebitRp, ffNumber, 10, 0),
        panjang - 13, taRightJustify);
      write(F, 'Total Debit :');
      Writeln(F, TotalDebit);
    end;
  end;

  if dm.Q_print.FieldByName('bayar').AsInteger <> 0 then
  begin
    Bayar := fungsi.TulisFormat(floattostrf(dm.Q_print.fieldbyname('bayar').AsFloat,
      ffNumber, 10, 0), panjang - 13, tarightjustify);
    write(F, 'Tunai       :');
    Writeln(F, bayar);
  end;

  if (dm.Q_print.FieldByName('kembali').AsInteger <> 0) and (dm.Q_print.FieldByName
    ('kembali').AsInteger <> dm.Q_print.FieldByName('cash_out').AsInteger) then
  begin
    Kembali := fungsi.TulisFormat(floattostrf(dm.Q_print.fieldbyname('kembali').AsFloat,
      ffNumber, 10, 0), panjang - 13, tarightjustify);
    write(F, 'Kembali     :');
    Writeln(F, kembali);
  end;

  writeln(F, '');

  toko := fungsi.TulisFormat(dm.Q_print.fieldbyname('n_perusahaan').AsString,
    panjang, tacenter);
  alamat := fungsi.TulisFormat(dm.Q_print.fieldbyname('alamat').AsString,
    panjang, tacenter);
  telp := fungsi.TulisFormat('Telp. ' + dm.Q_print.fieldbyname('telp').AsString,
    panjang, tacenter);

  for i:=0 to StPesan.Count - 1 do
  begin
    kaki := fungsi.TulisFormat(StPesan.Strings[i], panjang, tacenter);
    Writeln(F, kaki);
  end;
  
  for i := 1 to 10 do
    writeln(F, '');
  Writeln(F, toko);
  Writeln(F, alamat);
  Writeln(F, telp);
  CloseFile(F);

  fungsi.Cetakfile(dm.AppPath + 'k_struk.prn');
end;

procedure TF_Transaksi.cetak(kd_transaksi, jenis: string);
begin
  fungsi.SQLExec(dm.Q_print, 'select * from vw_jual_barang where no_transaksi="'
    + kd_transaksi + '" and kd_perusahaan=' + quotedstr(dm.kd_perusahaan) + '', true);

  if jenis = 'besar' then
  begin
    dm.laporan.LoadFromFile(dm.Path + 'laporan/k_struk_retail.fr3');
    dm.FRMemo(dm.laporan, 'Memo9').Text := MyTerbilang(dm.Q_print.fieldbyname('grand_total').AsFloat)
      + 'Rupiah';
    dm.laporan.ShowReport;
  end
  else if jenis = 'kecil' then
  begin
    cetak_struk_kecil;
  end;
end;

procedure TF_Transaksi.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('#'), 0);
  end;
end;

procedure TF_Transaksi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (TableView.DataController.RecordCount <> 0) or (cb_pending.Visible = true) then
  begin
    action := caNone;
    showmessage('Anda tidak dapat keluar dari program... '#10#13'Masih ada transaksi yang belum disimpan...');
    exit;
  end;

  if messagedlg('Apakah anda MENUTUP Aplikasi Kasir ini?', mtconfirmation,
    [mbYes, mbNo], 0) = mryes then
  begin
    Action := caFree;
  end
  else
    Action := caNone;
end;

procedure TF_Transaksi.Ed_CodeKeyPress(Sender: TObject; var Key: Char);
var
  kode: string;
begin
  if f_cariBarang = nil then
  begin
    kode := Ed_Code.Text;

    if key = #43 then // tanda + (repeat)
    begin
      delete(kode, pos('+', kode), 1);
      ed_code.Clear;
      key := #0;

      if (StrToIntDef(kode, 0) = 0) or (Length(kode) = 0) or (Length(kode) > 3)
        or (TableView.DataController.RecordCount = 0) or (_Get(0, 17, 1) <> 0) then
        Exit;

      UbahQty(kode);

    end;

    if Key = #45 then //tanda -  diskon Rp
    begin
      delete(kode, pos('-', kode), 1);
      kode := FloatToStr(StrToFloatDef(kode, 0));
      ed_code.Clear;
      key := #0;
      if (Length(kode) = 0) or (Length(kode) > 4) or (TableView.DataController.RecordCount
        = 0) or (_Get(0, 17, 1) <> 0) then
        Exit;

      _set(0, 19, 1, _Get(0, 19) + 'diskon manual Rp. ' + kode + ', '); //keterangan diskon manual Rp
      _Set(0, 7, 1, kode); //diskon RP
      if _get(0, 5) <> 0 then
        _Set(0, 6, 1, (StrToFloatdef(kode, 0) * 100) / _Get(0, 5)); //diskon pr
      _Set(0, 8, 1, _Get(0, 5) - StrToFloat(kode)); //netto
      _Set(0, 9, 1, _Get(0, 8) * _Get(0, 3)); //total harga
      _Set(0, 15, 1, _Get(0, 9) - _Get(0, 14)); //total laba
    end;

    if Key = #42 then //tanda *  diskon persen
    begin
      delete(kode, pos('*', kode), 1);
      kode := FloatToStr(StrToFloatDef(kode, 0));
      ed_code.Clear;
      key := #0;
      if (Length(kode) = 0) or (TableView.DataController.RecordCount = 0) or (_Get
        (0, 17) <> 0) then
        Exit;

      _set(0, 19, 1, _Get(0, 19) + 'diskon manual ' + kode + ' %, '); //keterangan diskon manual persen
      _Set(0, 6, 1, (StrToFloatDef(kode, 0))); //diskon pr
      _Set(0, 7, 1, (StrToFloatDef(kode, 0) / 100) * _Get(0, 5)); //diskon Rp
      _Set(0, 8, 1, _Get(0, 5) - _Get(0, 7)); //netto
      _Set(0, 9, 1, _Get(0, 8) * _Get(0, 3)); //Total harga
      _Set(0, 15, 1, _Get(0, 9) - _Get(0, 14)); //total laba

    end;

    if Key = #47 then //tanda (/)  ubah harga
    begin
      delete(kode, pos('/', kode), 1);
      ed_code.Clear;
      key := #0;

      if (StrToIntDef(kode, 0) = 0) or (Length(kode) = 0) or (TableView.DataController.RecordCount
        = 0) or (_Get(0, 17) <> 0) then
        Exit;

      _set(0, 19, 1, _Get(0, 19) + 'ubah harga dari ' + FloatToStr(_get(0, 5)) +
        ' ke ' + kode + ', '); //keterangan ubah harga
      _set(0, 6, 1, (_get(0, 7) * 100) / strtofloatdef(kode, 0)); //diskon pr
      _set(0, 5, 1, kode); //harga baru
      _set(0, 8, 1, _Get(0, 5) - _get(0, 7)); //netto
      _set(0, 9, 1, _Get(0, 8) * _Get(0, 3)); //total harga
      _set(0, 15, 1, _Get(0, 9) - _Get(0, 14)); //total laba
    end;
  end;
end;

procedure TF_Transaksi.Ed_discPKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    Ed_discRp.SetFocus
  end;
end;

procedure TF_Transaksi.File2Tb(tb: TcxGridDataController; FileName: string);
var
  F: TextFile;
  Tmp, x, y: Integer;
  TmpStr: string;
begin
  AssignFile(F, FileName);
  Reset(F);
  Readln(F, Tmp);
  tb.RecordCount := Tmp;
  for x := 0 to tb.GetItemCount - 1 do
    for y := 0 to tb.RecordCount - 1 do
    begin
      Readln(F, TmpStr);
      _set(y, x, 3, TmpStr);
    end;
  CloseFile(F);
end;

procedure TF_Transaksi.Tb2File(tb: TcxGridDataController; FileName: string);
var
  F: TextFile;
  x, y: Integer;
begin
  AssignFile(F, FileName);
  Rewrite(F);
  Writeln(F, tb.recordcount);
  for x := 0 to tb.GetItemCount - 1 do
    for y := 0 to tb.recordcount - 1 do
      Writeln(F, _get(y, x, 3));
  CloseFile(F);
end;

procedure TF_Transaksi.FormResize(Sender: TObject);
begin
  f_transaksi.WindowState := wsMaximized;
  cb_pending.Left := pnlFooter.Width - (cb_pending.Width + 8);
  Ed_BK.Left := pnlFooter.Width - (Ed_BK.Width + 8);
  L_Bayar.Left := pnlFooter.Width - (L_Bayar.Width + Ed_BK.Width + 12);
end;

procedure TF_Transaksi.Ed_CodeChange(Sender: TObject);
begin
  ed_Bayar.Clear;

  if f_cariBarang <> nil then
  begin
    fungsi.sqlExec(dm.Q_cari, 'SELECT tb_barang.kd_barang, tb_barang.n_barang, '
      + 'tb_barang_harga.harga_jual3 FROM tb_barang INNER JOIN tb_barang_harga ON '
      + 'tb_barang_harga.kd_perusahaan = tb_barang.kd_perusahaan AND tb_barang.kd_barang = tb_barang_harga.kd_barang '
      + 'where tb_barang.n_barang like "%' + ed_code.Text +
      '%" AND tb_barang_harga.kd_macam_harga="' + dm.macam_harga + '" and ' +
      'tb_barang.kd_perusahaan="' + dm.kd_perusahaan +
      '" order by tb_barang.n_barang LIMIT 0,100', true);

    kode_barang := dm.Q_cari.fieldbyname('kd_barang').AsString;
  end
  else
  begin
    kode_barang := Ed_Code.Text;
  end;
end;

procedure TF_Transaksi.Ed_CodeExit(Sender: TObject);
begin
  if f_cariBarang <> nil then
  begin
    f_cariBarang.Close;
    Ed_Code.Clear;
  end;
end;

procedure TF_Transaksi.TableViewFocusedRecordChanged(Sender:
  TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord:
  TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if tableview.DataController.RecordCount = 0 then
  begin
    mm_nama.Clear;
    exit;
  end
  else
  begin
    mm_nama.Text := AfocusedRecord.Values[2];
  end;
end;

procedure TF_Transaksi.TableViewDblClick(Sender: TObject);
begin
  if (TableView.DataController.RecordCount <> 0) and (_Get(0, 3) <> 0) then
  begin
    application.CreateForm(TF_Ubah_satuan, F_ubah_satuan);
    F_Ubah_satuan.L_kode.Caption := _Get(0, 1);
    F_Ubah_satuan.ShowModal;
  end;
end;

procedure TF_Transaksi.TableViewTcxGridDataControllerTcxDataSummaryFooterSummaryItems5GetText
  (Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var
  AText: string);
begin
  if (Atext <> '') then
    Ed_Sub.Text := AValue
  else
  begin
    Ed_Sub.Clear;
    ed_Harga.Clear;
  end;

end;

procedure TF_Transaksi.Ed_discPExit(Sender: TObject);
begin
  Ed_DiscRp.Value := (ed_sub.Value * Ed_DiscP.Value) / 100;
  Ed_Grand.Value := ed_sub.Value - ed_discRp.Value;
  Ed_Harga.Text := Ed_grand.Text;
end;

procedure TF_Transaksi.Ed_discRpExit(Sender: TObject);
begin
  if Ed_Sub.Value <> 0 then
    Ed_discP.Value := (Ed_DiscrP.Value * 100) / ed_sub.Value;
  Ed_Grand.Value := ed_sub.Value - ed_discRp.Value;
  Ed_Harga.Text := Ed_grand.Text;
end;

procedure TF_Transaksi.FormCreate(Sender: TObject);
begin
  DecimalSeparator := '.';
  ThousandSeparator := ',';

  F_Transaksi.BorderStyle := bsNone;
  F_Transaksi.WindowState := wsMaximized;
  cek_update;
  StPesan:= TStringList.Create;
  StPesan.QuoteChar:= '#';
end;

procedure TF_Transaksi.Ed_discRpKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if ed_bayar.Visible then
      Ed_Bayar.SetFocus
    else
    begin
      ed_pelanggan.SetFocus;
    end;
  end;
end;

procedure TF_Transaksi.b_simpanClick(Sender: TObject);
var
  merah: integer;
begin
  if ed_pelanggan.Text = 'CU-0001' then
  begin
    ShowMessage('transaksi ini tidak bisa menggunakan pelanggan umum...');
    Ed_Pelanggan.SetFocus;
    exit;
  end;

  // hanya untuk sementara selama proses pembuatan kartu
  if ed_keterangan.Text = '' then
  begin
    ShowMessage('masukkan keterangan penerima barang...');
    p_keterangan.Visible := True;
    ed_keterangan.SetFocus;
    exit;
  end;

  if not(FTunai) then
  begin
    fungsi.SQLExec(dm.Q_temp, 'select * from vw_pelanggan where kd_pelanggan="'
      + ed_pelanggan.Text + '" and kd_perusahaan="' + dm.kd_perusahaan + '"', true);

    batas := dm.Q_temp.fieldbyname('limit').AsInteger;
    piutang := dm.Q_temp.fieldbyname('piutang').AsInteger;
    merah := strtointdef(ed_grand.text, 0) + piutang;

    if (batas <> 0) and (merah > batas) then
    begin
      showmessage('transaksi tidak bisa dilakukan'#10#13'Karena grand total melebihi limit...');
      exit;
    end;
  end;

  if TableView.DataController.RecordCount <> 0 then
    if messagedlg('apakah data transaksi Grosir/ kredit akan disimpan',
      mtinformation, [mbyes, mbNo], 0) = mryes then
      simpan;
end;

procedure TF_Transaksi.t_pesanTimer(Sender: TObject);
var
  lebar_pesan: Integer;
begin
  if (PesanAktif = 0) then
  begin
    if p_pesan.Height <> 0 then
      p_pesan.Height := p_pesan.Height - 1
    else
      t_pesan.Enabled := False;
  end
  else
  begin
    l_pesan.Top := l_pesan.Height div 5;

    if p_pesan.Height <> l_pesan.Height + (l_pesan.Top * 2) then
    begin
      p_pesan.Height := p_pesan.Height + 1;
    end
    else
    begin
      lebar_pesan := l_pesan.Left + l_pesan.Width;
      if lebar_pesan <= 0 then
      begin
        l_pesan.Left := lebar_layar;
      end;
      l_pesan.Left := l_pesan.Left - 1;
    end;
  end;

end;

procedure TF_Transaksi.ac_InsertExecute(Sender: TObject);
begin
  // insert uang receh
  if (TableView.DataController.RecordCount <> 0) and (_Get(0, 3, 1) <> 0) then
  begin
    _set(0, 6, 1, (_get(0, 7, 1) * 100) / (strtofloat(_get(0, 5, 1)) +
      strtofloatdef(InsertHarga, 0))); //diskon pr
    _set(0, 5, 1, (strtofloat(_get(0, 5, 1)) + strtofloatdef(InsertHarga, 0)));
      //harga baru
    _set(0, 8, 1, _Get(0, 5, 1) - _get(0, 7, 1)); //netto
    _set(0, 9, 1, _Get(0, 8, 1) * _Get(0, 3, 1)); //total harga
    _set(0, 15, 1, _Get(0, 9, 1) - _Get(0, 14, 1)); //total laba
  end;
end;

procedure TF_Transaksi.ac_voidExecute(Sender: TObject);
begin
  // void
  if TableView.DataController.RecordCount <> 0 then
  begin
    fungsi.SQLExec(dm.Q_show, 'select * from tb_user where kd_user="' + dm.kd_operator
      + '"', true);
    PostMessage(Handle, InputBoxMessage, 0, 0);
    InputString := InputBox('Void Barang',
      'Masukkan Password Operator SERVER untuk memvoid barang ini', '');

    fungsi.SQLExec(dm.Q_temp, 'select md5("' + inputstring + '")as passs', true);
    passs := dm.Q_temp.fieldbyname('passs').AsString;

    if passs = dm.Q_show.FieldByName('password').AsString then
    begin
      _set(0, 17, 1, _get(0, 18, 1)); //void

      _set(0, 3, 1, 0);
      _set(0, 5, 1, 0);
      _set(0, 6, 1, 0);
      _set(0, 7, 1, 0);
      _set(0, 8, 1, 0);
      _set(0, 9, 1, 0);
      _set(0, 13, 1, 0);
      _set(0, 14, 1, 0);
      _set(0, 15, 1, 0);
      _set(0, 18, 1, 0);
    end
    else
    begin
      if InputString <> '' then
        showmessage('password Operator SERVER salah');
    end;
  end;
end;

procedure TF_Transaksi.ac_BatalExecute(Sender: TObject);
begin
  // batalkan transaksi
  if TableView.DataController.RecordCount <> 0 then
  begin
    fungsi.SQLExec(dm.Q_show, 'select * from tb_user where kd_user="' + dm.kd_operator
      + '"', true);
    PostMessage(Handle, InputBoxMessage, 0, 0);
    InputString := InputBox('Batalkan Transaksi',
      'Masukkan Password Operator SERVER untuk membatalkan transaksi ini', '');

    fungsi.SQLExec(dm.Q_temp, 'select md5("' + inputstring + '")as passs', true);
    passs := dm.Q_temp.fieldbyname('passs').AsString;

    if passs = dm.Q_show.FieldByName('password').AsString then
    begin
      alasan := inputbox('Motive', 'Masukkan Alasan Pembatalan', '');
      dm.db_conn.StartTransaction;
      try
        fungsi.SQLExec(dm.Q_exe,
          'insert into tb_jual_batal(kd_perusahaan,tgl_transaksi,' +
          'jam_transaksi,user,pengawas,alasan) values ("' + dm.kd_perusahaan +
          '",date(now()),time(now()),"' + dm.kd_pengguna + '","' + dm.kd_operator +
          '","' + alasan + '")', false);

        awal;
        dm.db_conn.Commit;
        showmessage('Transaksi Berhasil dibatalkan');
      except
        on e: exception do
        begin
          dm.db_conn.Rollback;
          showmessage('proses penyimpanan transaksi gagal '#10#13'' + e.Message);
        end;
      end;
    end
    else
    begin
      if InputString <> '' then
        showmessage('password Operator SERVER salah');
    end;
  end;
end;

procedure TF_Transaksi.ac_KunciExecute(Sender: TObject);
begin
  // Kunci transaksi
  if MM_nama.Text <> 'TERKUNCI' then
  begin
    MM_nama.Text := 'TERKUNCI';
    //tbp_pilihan.Caption := 'TRANSAKSI TERKUNCI';
  end
  else
  begin
    //tbp_pilihan.Caption := 'Pilihan Transaksi';
    if TableView.DataController.RecordCount = 0 then
    begin
      mm_nama.Text := '';
      Exit;
    end;
    MM_nama.Lines.Text := _Get(0, 2); //nama barang
  end;
end;

procedure TF_Transaksi.ac_ReturnExecute(Sender: TObject);
begin
  // return Penjualan
  if KasirOffline then
  begin
    ShowMessage('TIDAK DAPAT MELAKUKAN RETURN JUAL...'#10#13'Kasir Sudah Melakukan TUTUP KASIR....');
    Exit;
  end;

  fungsi.SQLExec(dm.Q_show, 'select * from tb_user where kd_user="' + dm.kd_operator
    + '"', true);
  PostMessage(Handle, InputBoxMessage, 0, 0);
  InputString := InputBox('Return Jual',
    'Masukkan Password Operator SERVER untuk melakukan return jual', '');

  fungsi.SQLExec(dm.Q_temp, 'select md5("' + inputstring + '")as passs', true);
  passs := dm.Q_temp.fieldbyname('passs').AsString;

  if passs = dm.Q_show.FieldByName('password').AsString then
  begin
    application.CreateForm(TF_Returnjual, F_ReturnJual);
    f_returnjual.ShowModal;
  end
  else
  begin
    if InputString <> '' then
      showmessage('password Operator SERVER salah');
  end;

end;

procedure TF_Transaksi.ac_PendingExecute(Sender: TObject);
begin
  // Pending Transaksi
  if TableView.DataController.RecordCount = 0 then
    Exit;
  try
    if messagedlg('Benarkah Anda akan menahan transaksi ini???', mtconfirmation,
      [mbyes, mbNo], 0) = mryes then
    begin
      tahan := tahan + 1;
      no_pending := 'Hold ' + inttostr(tahan);
      cb_pending.Visible := true;
      cb_pending.Items.Add(no_pending);
      cb_pending.ItemIndex := cb_pending.Items.Count - 1;
      if not (DirectoryExists(dm.AppPath + 'Hold')) then
        CreateDir(dm.AppPath + 'Hold');
      Tb2File(TableView.DataController, dm.AppPath + 'Hold\' + no_pending + '.pd');
      fungsi.amankan(dm.AppPath + 'Hold\' + no_pending + '.pd', dm.AppPath +
        'Hold\' + no_pending + '.pd', 753);
      awal;
      showmessage('Transaksi berhasil ditahan');
    end;
  except
    showmessage('proses tahan transaksi gagal...')
  end;
end;

procedure TF_Transaksi.ac_LoadExecute(Sender: TObject);
begin
  // Load transaksi
  try
    if cb_pending.Visible = true then
    begin
      if TableView.DataController.RecordCount <> 0 then
      begin
        showmessage('data yang ditahan tidak bisa ditampilkan '#10#13'Karena masih ada barang yang belum ditransaksikan');
        exit;
      end;
      if messagedlg('Benarkah Anda akan mempilkan transaksi ini???',
        mtconfirmation, [mbyes, mbNo], 0) = mryes then
      begin

        if fileexists(dm.AppPath + 'Hold\' + cb_pending.Text + '.pd') then
        begin
          fungsi.amankan(dm.AppPath + 'Hold\' + cb_pending.Text + '.pd', dm.AppPath
            + 'Hold\' + cb_pending.Text + '.pd', 753);
          file2tb(TableView.DataController, dm.AppPath + 'Hold\' + cb_pending.Text
            + '.pd');
          fungsi.amankan(dm.AppPath + 'Hold\' + cb_pending.Text + '.pd', dm.AppPath
            + 'Hold\' + cb_pending.Text + '.pd', 753);
          deletefile(dm.AppPath + 'Hold\' + cb_pending.Text + '.pd');
          cb_pending.Items.Delete(cb_pending.ItemIndex);

          ed_code.SetFocus;
          cb_pending.ItemIndex := cb_pending.Items.Count - 1;
          ed_bayar.ReadOnly := false;
          ed_discP.ReadOnly := false;

          if TableView.DataController.RecordCount <> 0 then
          begin
            tableview.DataController.ChangeFocusedRowIndex(tableview.DataController.RecordCount);
          end;

          if cb_pending.Items.Count = 0 then
          begin
            cb_pending.Clear;
            cb_pending.Visible := false;
          end;
        end;
      end;
    end;
  except
    showmessage('proses memunculkan transaksi yang ditahan gagal');
  end
end;

procedure TF_Transaksi.ac_SatuanExecute(Sender: TObject);
begin
  // Ubah Satuan
  TableViewDblClick(Sender);
end;

procedure TF_Transaksi.ac_cetakExecute(Sender: TObject);
begin
  // cetak Ulang
  if KodeTransaksi <> '' then
    if StJenis = 1 then
      cetak(KodeTransaksi, 'besar')
    else
      cetak(KodeTransaksi, 'kecil')
end;

procedure TF_Transaksi.ac_closeExecute(Sender: TObject);
begin
  close;
end;

procedure TF_Transaksi.ac_jual_globalExecute(Sender: TObject);
begin
  // lihat transaksi global
  Application.CreateForm(Tf_list_sales, f_list_sales);
  f_list_sales.ShowModal;
end;

procedure TF_Transaksi.Ed_PelangganChange(Sender: TObject);
begin
  fungsi.SQLExec(dm.Q_temp, 'select * from vw_pelanggan where kd_pelanggan="' +
    ed_pelanggan.Text + '" and kd_perusahaan="' + dm.kd_perusahaan + '"', true);
  if dm.Q_temp.Eof then
  begin
    b_simpan.Enabled := False;
  end
  else
  begin
    b_simpan.Enabled := True;
    Ed_Pelanggan.Text := dm.Q_temp.FieldByName('kd_pelanggan').AsString;
    L_nm_pel.Caption := dm.Q_temp.FieldByName('n_pelanggan').AsString;
  end;
end;

procedure TF_Transaksi.ed_keteranganKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if b_simpan.Visible then
      b_simpan.SetFocus
    else
      ed_discP.SetFocus;
  end;
end;

procedure TF_Transaksi.Cb_lamaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    b_simpan.SetFocus;
  end;

end;

procedure TF_Transaksi.cek_update;
var
  versiDB, versiAPP, URLDownload: string;
  fileName, UrlDownloadLocal: string;
begin
  versiAPP := fungsi.GetVersiApp;

  fungsi.SQLExec(dm.Q_Show,
    'select versi_terbaru, URLdownload from  app_versi where kode="kasir.exe"', true);
  versiDB := dm.Q_Show.FieldByName('versi_terbaru').AsString;
  URLDownload := dm.Q_Show.FieldByName('URLdownload').AsString;
  fileName := Copy(URLDownload, LastDelimiter('/', URLDownload) + 1, Length(URLDownload));
  UrlDownloadLocal := 'http://' + dm.db_conn.Server + '/GainProfit/' + fileName;

  if versiAPP < versiDB then
  begin
    ShowMessage('APLIKASI KASIR TIDAK DAPAT DIJALANKAN' + #13#10 +
      'aplikasi terbaru dengan versi : ' + versiDB + #13#10 + 'SUDAH DIRILIS...');

    Application.Terminate;
    Exit;
  end;
end;

function TF_Transaksi.KasirOffline: Boolean;
var
  sql: string;
begin
  Result := False;

  sql := Format('SELECT `status` from tb_login_kasir WHERE kd_perusahaan = "%s" '
    + ' AND kd_jaga = "%s" AND `user` = "%s" AND `status` = "online"', [dm.kd_perusahaan,
    dm.kd_operator, dm.kd_pengguna]);

  fungsi.SQLExec(dm.Q_temp, sql, True);
  if dm.Q_temp.Eof then
    Result := True;
end;

procedure TF_Transaksi.ac_GroupExecute(Sender: TObject);
var
  GroupId, qty, diskon, jenis: string;
begin
  Ed_Code.SetFocus;
  if MM_nama.Text = 'TERKUNCI' then
  begin
    ShowMessage('Tidak Dapat melakukan Aksi ini, Transaksi sedang TERKUNCI...');
    Exit;
  end;

  application.CreateForm(tf_cari, f_cari);
  with F_cari do
  try
    _SQLi := 'select id_group, deskripsi, diskon, jenis from tb_barang_group';
    tblcap[0] := 'Kode Group';
    tblCap[1] := 'Deskripsi Group';
    tblCap[2] := 'Diskon';
    tblCap[3] := 'Jenis';
    if ShowModal = mrOk then
    begin
      GroupId := TblVal[0];
      diskon := TblVal[2];
      jenis := TblVal[3];

      fungsi.SQLExec(dm.QGroup, format('SELECT kd_barang, qty from tb_barang_group_detail '
        + 'WHERE barang_group_id = "%s" ORDER BY kd_barang', [GroupId]), True);
      while not dm.QGroup.Eof do
      begin
        kode_barang := dm.QGroup.FieldByName('kd_barang').AsString;
        qty := dm.QGroup.FieldByName('Qty').AsString;

        input_kode;

        if qty <> '1' then
          UbahQty(qty);

        dm.QGroup.Next;
      end;
      if jenis = '%' then
      begin
        ed_discP.Value := StrToFloat(diskon);
        ed_discP.SetFocus;
        Ed_Bayar.SetFocus;
      end
      else
      begin
        Ed_discRp.Value := StrToFloat(diskon);
        Ed_discRp.SetFocus;
        Ed_Bayar.SetFocus;
      end;
    end;
  finally
    close;
  end;
end;

procedure TF_Transaksi.UbahQty(Qty: string);
var
  Qty_asli: Integer;
begin
  _set(0, 19, 1, _Get(0, 19) + 'repeat manual ' + Qty + ' X, '); //keterangan ubah manual
  Qty_asli := _Get(0, 18) / _Get(0, 3);
  _Set(0, 3, 1, Qty); //QtyH
  _Set(0, 9, 1, _Get(0, 8) * StrToFloat(Qty)); //total harga
  _Set(0, 14, 1, _Get(0, 13) * Qty_asli * StrToInt(Qty)); //total harga pokok
  _Set(0, 15, 1, _Get(0, 9) - _Get(0, 14)); //total laba
  _Set(0, 18, 1, Qty_asli * StrToInt(Qty)); //Qty_real
end;

procedure TF_Transaksi.ac_settingExecute(Sender: TObject);
begin
  Application.CreateForm(TFSetting, FSetting);
  FSetting.ShowModal;
end;

procedure TF_Transaksi.ac_cari_barangExecute(Sender: TObject);
begin
  if f_cariBarang = nil then
  begin
    application.CreateForm(Tf_cariBarang, f_cariBarang);
    with f_cariBarang do
      SetWindowPos(Handle, HWND_TOPMOST, Ed_Code.Left, pnlKode.Top + ed_code.Height,
        Ed_Code.Width - 20, Grid.Height - 40, SWP_DRAWFRAME);
    f_cariBarang.Show;
    Ed_Code.Clear;
    Ed_Code.SetFocus;
  end;
end;

procedure TF_Transaksi.ac_kartu_kreditExecute(Sender: TObject);
begin
  if Ed_Grand.Value > 0 then
    begin
      if not(FTunai) then
      begin
        FTunai:= True;
        UpdateRetailTunai;
      end;
      Application.CreateForm(TF_Bayar, F_Bayar);
      pnlFooter.Visible := False;

      with F_Bayar do
      try
        TotalHarga := Ed_Grand.value;
        if F_Bayar.ShowModal = mrOk then
        begin
          DebitId := cbBank.ItemIndex + 1;
          DebitKode := edNomerKartu.Text;
          DebitRp := edDebit.AsInteger;
          CashOut := edTarik.AsInteger;
          Ed_Bayar.Value := edTunai.Value;
          Ed_Kembali.Value := edKembali.Value;
          simpan;
        end;
      finally
        Close;
      end;

      pnlFooter.Visible := True;
      aktifkan_pesan;
    end;
end;

procedure TF_Transaksi.ac_drawerExecute(Sender: TObject);
begin
  fungsi.OpenCashDrawer;
end;

procedure TF_Transaksi.ac_keteranganExecute(Sender: TObject);
begin
  p_keterangan.Visible := not (p_keterangan.Visible);
  if p_keterangan.Visible then
    ed_keterangan.SetFocus
  else
    Ed_Code.SetFocus;
end;

procedure TF_Transaksi.UpdateRetailTunai;
var
  Jenis: string;
begin
  sLabel5.Visible := FTunai;
  sLabel6.Visible := FTunai;
  Ed_bayar.Value := 0;
  ed_Kembali.Value := 0;
  ed_bayar.Visible := FTunai;
  ed_kembali.Visible := FTunai;

  sLabel7.Visible := not(FTunai);
  ed_pelanggan.Visible := not(FTunai);
  sb_cari_pel.Visible := not(FTunai);
  l_nm_pel.Visible := not(FTunai);

  sLabel8.Visible := not(FTunai);
  cb_lama.Visible := not(FTunai);
  ed_lama.Visible := not(FTunai);
  sLabel9.Visible := not(FTunai);
  ed_jatuh_tempo.Visible := not(FTunai);
  slabel10.Visible := not(FTunai);

  b_simpan.Visible := not(FTunai);

  if FTunai then
  begin
    cb_lama.ItemIndex:= 5;
    ed_lama.Text := '0';
  end else
  begin
    cb_lama.ItemIndex:= 0;
    ed_lama.Text := '7';
  end;

  if FRetail then
  begin
    dm.macam_harga := 'HETK';
    ed_pelanggan.Text := 'CU-0001';
    l_nm_pel.Caption := 'UMUM';
  end else
  begin
    dm.macam_harga := 'HGTK';
    sLabel7.Visible := not(FRetail);
    ed_pelanggan.Visible := not(FRetail);
    sb_cari_pel.Visible := not(FRetail);
    l_nm_pel.Visible := not(FRetail);
    b_simpan.Visible := not(FRetail);
  end;

  if FRetail then Jenis:= 'Retail | ' else Jenis:= 'Grosir | ';
  if FTunai then Jenis:= Jenis + 'Tunai' else Jenis:= Jenis + 'Kredit';
  pnlRetailTunai.Caption:= Jenis;

  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'retail', Values[FRetail]);
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'tunai', Values[FTunai]);
end;

procedure TF_Transaksi.ac_tunaiExecute(Sender: TObject);
begin
  FTunai:= not(FTunai);
  UpdateRetailTunai;
end;

procedure TF_Transaksi.ac_retailExecute(Sender: TObject);
begin
  if TableView.DataController.RecordCount <> 0 then
  begin
    ShowMessage('Tidak Bisa merubah Retail/Grosir ketika ada data yang di transaksikan');
    Exit;
  end;

  FRetail:= not(FRetail);
  UpdateRetailTunai;
end;

end.

