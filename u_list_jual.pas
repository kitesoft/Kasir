unit u_list_jual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxGraphics, cxDataStorage,
  cxEdit, DB, cxDBData, cxCurrencyEdit, sButton, ExtCtrls, sPanel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxImageComboBox, sEdit,
  UFungsi, StdCtrls, cxCustomData, cxFilter, cxData, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxNavigator;

type
  Tf_list_sales = class(TForm)
    grid: TcxGrid;
    t_data1: TcxGridDBTableView;
    l_data: TcxGridLevel;
    clmn_data1kd_transaksi: TcxGridDBColumn;
    clmn_data1tgl_transaksi: TcxGridDBColumn;
    clmn_data1jam_transaksi: TcxGridDBColumn;
    clmn_data1n_pelanggan: TcxGridDBColumn;
    clmn_data1tunai: TcxGridDBColumn;
    clmn_data1kd_macam_harga: TcxGridDBColumn;
    clmn_data1sub_total: TcxGridDBColumn;
    clmn_data1discountGP: TcxGridDBColumn;
    clmn_data1grand_total: TcxGridDBColumn;
    clmn_data1kd_user: TcxGridDBColumn;
    clmn_data1KD_pengawas: TcxGridDBColumn;
    clmn_data1void: TcxGridDBColumn;
    clmn_data1komp: TcxGridDBColumn;
    ed_cari: TsEdit;
    p1: TsPanel;
    b_kecil: TsButton;
    b_besar: TsButton;
    procedure FormShow(Sender: TObject);
    procedure b_besarClick(Sender: TObject);
    procedure b_kecilClick(Sender: TObject);
    procedure ed_cariKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure t_data1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo:
      TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_list_sales: Tf_list_sales;

implementation

uses
  u_dm, u_trans;

{$R *.dfm}

procedure Tf_list_sales.FormShow(Sender: TObject);
begin
  fungsi.SQLExec(dm.Q_jual_global,
    'select * from vw_list_sales where kd_perusahaan = "' + dm.kd_perusahaan +
    '" limit 0,50', True);
end;

procedure Tf_list_sales.b_besarClick(Sender: TObject);
begin
  F_Transaksi.cetak(dm.Q_jual_global.fieldbyname('kd_transaksi').AsString, 'besar');
end;

procedure Tf_list_sales.b_kecilClick(Sender: TObject);
begin
  F_Transaksi.cetak(dm.Q_jual_global.fieldbyname('kd_transaksi').AsString, 'kecil');
end;

procedure Tf_list_sales.ed_cariKeyDown(Sender: TObject; var Key: Word; Shift:
  TShiftState);
begin
  if key = vk_return then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    fungsi.SQLExec(dm.Q_jual_global,
      'select * from vw_list_sales where kd_perusahaan = "' + dm.kd_perusahaan +
      '" and kd_transaksi like "%' + ed_cari.Text + '%"', True);
  end;
end;

procedure Tf_list_sales.t_data1CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift:
  TShiftState; var AHandled: Boolean);
begin
  F_Transaksi.cetak(dm.Q_jual_global.fieldbyname('kd_transaksi').AsString, 'besar');
end;

procedure Tf_list_sales.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_escape then Close;
end;

end.

