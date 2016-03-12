unit u_jual_kasir;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, U_fungsi, DB, Grids, DBGrids, ExtCtrls, sPanel,
  StdCtrls, sLabel, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit,
  sCurrencyEdit,math,mySQLDbTables, sButton, sGroupBox, sEdit,inifiles;

type
  TF_Jual_Kasir = class(TForm)
    sSkinProvider1: TsSkinProvider;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel8: TsLabel;
    Ed_Transaksi: TsCurrencyEdit;
    Ed_BarangT: TsCurrencyEdit;
    Ed_BarangQ: TsCurrencyEdit;
    Ed_VoidQ: TsCurrencyEdit;
    Ed_Disc: TsCurrencyEdit;
    Ed_Kredit: TsCurrencyEdit;
    Ed_Total: TsCurrencyEdit;
    Ed_return: TsCurrencyEdit;
    sLabel10: TsLabel;
    gb_tutup: TsGroupBox;
    sButton1: TsButton;
    Ed_setor: TsCurrencyEdit;
    sLabel11: TsLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Jual_Kasir: TF_Jual_Kasir;
  fungsi:Tfungsi;
implementation

uses u_dm, u_trans;

{$R *.dfm}

procedure TF_Jual_Kasir.FormShow(Sender: TObject);
begin
dm.My_Conn.StartTransaction;
try
fungsi.SQLExec(dm.Q_exe,'call sp_setor_kasir("'+f_transaksi.sb.Panels[1].Text+'","'+
f_transaksi.Sb.Panels[2].Text+'","'+F_transaksi.Sb.Panels[4].Text+'")',False);
dm.My_Conn.Commit;
except on e:exception do begin
  dm.My_conn.Rollback;
  showmessage('proses update data gagal... '#10#13'' +e.Message);
  end;
end;
fungsi.SQLExec(dm.Q_temp,'select * from tb_login_kasir where kd_perusahaan="'+
f_transaksi.sb.Panels[1].Text+'" and user="'+F_transaksi.Sb.Panels[2].Text+'"  and kd_jaga = "'+
F_transaksi.Sb.Panels[4].Text+'" and status=''online''',True);

Ed_Transaksi.Value:= dm.Q_temp.fieldbyname('transaksi').AsInteger;

ed_barangT.Value:= dm.Q_temp.fieldbyname('tr_barang').AsInteger;

Ed_BarangQ.Value:= dm.Q_temp.fieldbyname('qty_barang').AsInteger;
Ed_VoidQ.Value:= dm.Q_temp.fieldbyname('void').AsInteger;
Ed_Disc.Value:= dm.Q_temp.fieldbyname('discount').AsInteger;

Ed_Kredit.Value:= dm.Q_temp.fieldbyname('kredit').AsInteger;
Ed_Total.Value:= dm.Q_temp.fieldbyname('price_oh').AsInteger;
ed_return.Value:= dm.Q_temp.FieldByName('return_jual').AsInteger;
ed_setor.Value:= dm.Q_temp.FieldByName('jumlah_setor_oh').AsInteger;

end;

procedure TF_Jual_Kasir.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then
  if gb_tutup.Visible=false then close;
end;

procedure TF_Jual_Kasir.sButton1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
