unit U_ubah_satuan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sEdit, sGroupBox, sButton, Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, sCurrencyEdit, U_fungsi, sSkinProvider,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCurrencyEdit;

type
  TF_Ubah_Satuan = class(TForm)
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    L_kode: TsLabel;
    L_nama: TsLabel;
    sSkinProvider1: TsSkinProvider;
    Grid: TcxGrid;
    tableview: TcxGridTableView;
    tv_barcode: TcxGridColumn;
    tv_Satuan: TcxGridColumn;
    tv_Harga: TcxGridColumn;
    Level: TcxGridLevel;
    tv_Qty: TcxGridColumn;
    tv_Column1: TcxGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tableviewDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Ubah_Satuan: TF_Ubah_Satuan;
  fungsi:Tfungsi;
  sat1,sat2,sat3: string;

implementation

uses u_dm, u_trans;

{$R *.dfm}

procedure TF_Ubah_Satuan.FormShow(Sender: TObject);
begin
fungsi.SQLExec(dm.Q_show,'SELECT tb_barang.n_barang,tb_barang.kd_sat1,tb_barang.kd_sat2,tb_barang.kd_sat3, '+
'tb_barang.Qty1,tb_barang.qty2,tb_barang.barcode1,tb_barang.barcode2,tb_barang.barcode3, '+
'tb_barang.hpp_aktif,tb_barang_harga.harga_jual1, '+
'tb_barang_harga.harga_jual2,tb_barang_harga.harga_jual3 FROM tb_barang INNER JOIN '+
'tb_barang_harga ON tb_barang.kd_barang=tb_barang_harga.kd_barang and tb_barang.kd_perusahaan=tb_barang_harga.kd_perusahaan '+
'WHERE kd_macam_harga="'+dm.macam_harga+'" and tb_barang.kd_barang = "'+
l_kode.Caption+'" and tb_barang.kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'"',true);

l_nama.Caption:= dm.Q_show.fieldbyname('n_barang').AsString;

  tableview.DataController.RecordCount:=3;

sat3:=dm.Q_show.fieldbyname('kd_sat3').AsString;
fungsi.SQLExec(dm.Q_Temp,'select * from tb_satuan where kd_satuan="'+sat3+'"', true);

  TableView.DataController.SetValue(0, 0, dm.Q_show.fieldbyname('barcode3').AsString);
  TableView.DataController.SetValue(0, 1, 1);
  TableView.DataController.SetValue(0, 2, dm.Q_Temp.fieldbyname('n_singkat').AsString);
  TableView.DataController.SetValue(0, 3, dm.Q_show.fieldbyname('harga_jual3').AsString);
  TableView.DataController.SetValue(0, 4, dm.Q_show.fieldbyname('kd_sat3').AsString);

sat2:=dm.Q_show.fieldbyname('kd_sat2').AsString;
fungsi.SQLExec(dm.Q_Temp,'select * from tb_satuan where kd_satuan="'+sat2+'"', true);
  TableView.DataController.SetValue(1, 0, dm.Q_show.fieldbyname('barcode2').AsString);
  TableView.DataController.SetValue(1, 1, dm.Q_show.fieldbyname('Qty2').AsString);
  TableView.DataController.SetValue(1, 2, dm.Q_Temp.fieldbyname('n_singkat').AsString);
  TableView.DataController.SetValue(1, 3, dm.Q_show.fieldbyname('harga_jual2').AsString);
  TableView.DataController.SetValue(1, 4, dm.Q_show.fieldbyname('kd_sat2').AsString);

sat1:=dm.Q_show.fieldbyname('kd_sat1').AsString;
fungsi.SQLExec(dm.Q_Temp,'select * from tb_satuan where kd_satuan="'+sat1+'"', true);
  TableView.DataController.SetValue(2, 0, dm.Q_show.fieldbyname('barcode1').AsString);
  TableView.DataController.SetValue(2, 1, dm.Q_show.fieldbyname('Qty1').AsInteger * dm.Q_show.fieldbyname('Qty2').AsInteger );
  TableView.DataController.SetValue(2, 2, dm.Q_Temp.fieldbyname('n_singkat').AsString);
  TableView.DataController.SetValue(2, 3, dm.Q_show.fieldbyname('harga_jual1').AsString);
  TableView.DataController.SetValue(2, 4, dm.Q_show.fieldbyname('kd_sat1').AsString);

  tableview.DataController.ChangeFocusedRowIndex(0);
end;

procedure TF_Ubah_Satuan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then close;

if Key=vk_return then tableviewDblClick(Sender);
end;

procedure TF_Ubah_Satuan.tableviewDblClick(Sender: TObject);
var Qty_real:Integer;
begin
Qty_real:= F_Transaksi._Get(0,3,1)  * TableView.DataController.GetValue(TableView.DataController.FocusedRecordIndex,1);

F_Transaksi._set(0,4,1,TableView.DataController.GetValue(TableView.DataController.FocusedRecordIndex,2));
F_Transaksi._set(0,5,1,TableView.DataController.GetValue(TableView.DataController.FocusedRecordIndex,3));

F_Transaksi._set(0, 7,  1, (F_Transaksi._get(0,7,1)  / F_Transaksi._get(0,18,1)) * Qty_real); //diskon Rp
F_Transaksi._set(0, 6,  1, (F_Transaksi._get(0,7,1)  * 100) / F_Transaksi._get(0,5,1)); //diskon pr
F_Transaksi._set(0, 8,  1,  F_Transaksi._Get(0,5,1)  - F_Transaksi._get(0,7,1)); //netto
F_Transaksi._set(0, 9,  1,  F_Transaksi._Get(0,8,1)  * F_Transaksi._Get(0,3,1)); //netto
F_Transaksi._set(0, 14, 1,  F_Transaksi._Get(0,13,1) * Qty_real); //total harga pokok
F_Transaksi._set(0, 15, 1,  F_Transaksi._Get(0,9,1)  - F_Transaksi._Get(0,14,1)); //total laba
F_Transaksi._set(0, 16, 1,  TableView.DataController.GetValue(TableView.DataController.FocusedRecordIndex,4));
F_Transaksi._set(0, 18, 1,  Qty_real);

F_Transaksi._set(0, 19, 1, F_Transaksi._Get(0,19,1) + 'ubah satuan, Qty = '+inttostr(Qty_real)+', '); //keterangan ubah manual

close;
end;

end.
