unit u_cari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridLevel, cxGrid, sSkinProvider, cxCurrencyEdit;

type
  Tf_cari = class(TForm)
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
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    procedure WMNCHitTest(var msg: TWMNCHitTest); message WM_NCHITTEST;
  public
    { Public declarations }
  end;

var
  f_cari: Tf_cari;

implementation

uses u_dm, u_trans;

{$R *.dfm}

procedure Tf_cari.CreateParams(var Params: TCreateParams);
begin
   inherited CreateParams(Params);
   with Params do
      Style := (Style or WS_POPUP) and (not WS_DLGFRAME);
end;

procedure Tf_cari.WMNCHitTest(var msg: TWMNCHitTest);
begin
   inherited;
   with msg do
      if Result = htClient then Result := htCaption;
end;

procedure Tf_cari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=caFree;
f_cari:=nil;
end;

procedure Tf_cari.FormShow(Sender: TObject);
begin
fungsi.sqlExec(dm.Q_cari,'SELECT tb_barang.kd_barang, tb_barang.n_barang, '+
'tb_barang_harga.harga_jual3 FROM tb_barang INNER JOIN tb_barang_harga ON '+
'tb_barang_harga.kd_perusahaan = tb_barang.kd_perusahaan AND tb_barang.kd_barang = tb_barang_harga.kd_barang '+
'WHERE tb_barang_harga.kd_macam_harga="'+macam_harga+'" and '+
'tb_barang.kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'" order by tb_barang.n_barang LIMIT 0,100', true);
kode_barang:= dm.Q_cari.fieldbyname('kd_barang').AsString;
end;

procedure Tf_cari.tableviewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
kode_barang:= dm.Q_cari.fieldbyname('kd_barang').AsString;
F_Transaksi.input_kode;
end;

end.
