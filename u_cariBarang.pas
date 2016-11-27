unit u_cariBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxGraphics, cxDataStorage,
  cxEdit, DB, cxDBData, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridLevel, cxGrid,
  sSkinProvider, cxCurrencyEdit, UFungsi, cxCustomData, cxFilter, cxData;

type
  Tf_cariBarang = class(TForm)
    Grid: TcxGrid;
    Level: TcxGridLevel;
    tableview: TcxGridDBTableView;
    clmnColumn1: TcxGridDBColumn;
    clmnColumn2: TcxGridDBColumn;
    sknprvdr1: TsSkinProvider;
    clmnColumn3: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tableviewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift:
      TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    procedure WMNCHitTest(var msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  f_cariBarang: Tf_cariBarang;

implementation

uses
  u_dm, u_trans;

{$R *.dfm}

procedure Tf_cariBarang.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
end;

procedure Tf_cariBarang.WMNCHitTest(var msg: TWMNCHitTest);
begin
  inherited;
  with msg do
    if Result = htClient then
      Result := htCaption;
end;

procedure Tf_cariBarang.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
  f_cariBarang := nil;
end;

procedure Tf_cariBarang.FormShow(Sender: TObject);
begin
  fungsi.sqlExec(dm.Q_cari, 'SELECT tb_barang.kd_barang, tb_barang.n_barang, ' +
    'tb_barang_harga.harga_jual3 FROM tb_barang INNER JOIN tb_barang_harga ON ' +
    'tb_barang_harga.kd_perusahaan = tb_barang.kd_perusahaan AND tb_barang.kd_barang = tb_barang_harga.kd_barang ' +
    'WHERE tb_barang_harga.kd_macam_harga="' + dm.macam_harga + '" and ' +
    'tb_barang.kd_perusahaan="' + dm.kd_perusahaan +
    '" order by tb_barang.n_barang LIMIT 0,100', true);
  F_Transaksi.kode_barang := dm.Q_cari.fieldbyname('kd_barang').AsString;
end;

procedure Tf_cariBarang.tableviewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift:
  TShiftState; var AHandled: Boolean);
begin
  F_Transaksi.kode_barang := dm.Q_cari.fieldbyname('kd_barang').AsString;
  F_Transaksi.input_kode;
end;

end.

