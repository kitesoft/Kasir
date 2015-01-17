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
//var laba,TOTAL,diskGlob: integer;
begin
{fungsi.SQLExec(dm.Q_show,'SELECT no_transaksi,kd_barang,n_barang,Qty,discountRp,harga_netto,total_harga,void_barang '+
'from `tb_jual_rinci` INNER JOIN `tb_jual_global` on`tb_jual_global`.`kd_transaksi` = `tb_jual_rinci`.`no_transaksi` '+
'where (`tb_jual_global`.`tgl_transaksi` = "'+formatdatetime('yyyy-MM-dd',date())+'" and tb_jual_rinci.`user`="'+
f_transaksi.Sb.Panels[2].Text+'"  and tb_jual_global.kd_pengawas = "'+F_transaksi.Sb.Panels[4].Text
+'" and tb_jual_global.kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'")',true);

fungsi.SQLExec(dm.Q_temp,'select count(kd_transaksi) as con_transaksi, sum(discountGRp) as sum_disk from tb_jual_global '+
'where tgl_transaksi=date(now()) and kd_user= "'+f_transaksi.Sb.Panels[2].Text+'"  and kd_pengawas = "'+
F_transaksi.Sb.Panels[4].Text+'"and kd_perusahaan="'+
f_transaksi.sb.Panels[1].Text+'"',true);
Ed_Transaksi.Value:= dm.Q_temp.fieldbyname('con_transaksi').AsInteger;
diskglob:= dm.Q_temp.fieldbyname('sum_disk').AsInteger;

fungsi.SQLExec(dm.Q_temp,'select count(void) as con_voidT from tb_jual_global '+
'where tgl_transaksi=date(now()) and kd_user= "'+f_transaksi.Sb.Panels[2].Text+'"  and kd_pengawas = "'+
F_transaksi.Sb.Panels[4].Text+'" and void>0 and kd_perusahaan="'+
f_transaksi.sb.Panels[1].Text+'"',true);
ed_voidT.Value:= dm.Q_temp.fieldbyname('con_voidT').AsInteger;

fungsi.SQLExec(dm.Q_temp,'select tb_jual_rinci.kd_barang from tb_jual_rinci right join '+
'tb_jual_global on  tb_jual_rinci.no_transaksi=tb_jual_global.kd_transaksi '+
'where tb_jual_global.tgl_transaksi=date(now()) and tb_jual_global.kd_user= "'+
f_transaksi.Sb.Panels[2].Text+'"  and tb_jual_global.kd_pengawas = "'+
F_transaksi.Sb.Panels[4].Text+'" and tb_jual_global.kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'" '+
'group by tb_jual_rinci.kd_barang',true);
ed_barangT.Value:= dm.Q_temp.RecordCount;

fungsi.SQLExec(dm.Q_temp,'select sum(tb_jual_rinci.Qty) as sum_Qty, '+
'sum(tb_jual_rinci.void_barang) as sum_void, sum(tb_jual_rinci.DiscountRp) as sum_disc, '+
'sum(tb_jual_rinci.total_harga) as sum_total, '+
'sum(tb_jual_rinci.laba) as sum_laba from tb_jual_rinci inner join '+
'tb_jual_global on  tb_jual_rinci.no_transaksi=tb_jual_global.kd_transaksi '+
'where tb_jual_global.tgl_transaksi=date(now()) and tb_jual_global.kd_user= "'+
f_transaksi.Sb.Panels[2].Text+'"  and tb_jual_global.kd_pengawas = "'+F_transaksi.Sb.Panels[4].Text+'" and tb_jual_global.kd_perusahaan= "'+f_transaksi.sb.Panels[1].Text+'"',true);

Ed_BarangQ.Value:= dm.Q_temp.fieldbyname('sum_qty').AsInteger;
Ed_VoidQ.Value:= dm.Q_temp.fieldbyname('sum_void').AsInteger;
Ed_Disc.Value:= dm.Q_temp.fieldbyname('sum_disc').AsInteger+diskglob;
TOTAL:= strtointdef(dm.Q_temp.fieldbyname('sum_total').asstring,0);
laba:= strtointdef(dm.Q_temp.fieldbyname('sum_laba').asstring,0);

if total<>0 then
Ed_Laba.Value:= (laba/total)*100;

fungsi.SQLExec(dm.Q_temp,'select sum(tb_jual_rinci.total_harga) as sum_total from tb_jual_rinci inner join '+
'tb_jual_global on  tb_jual_rinci.no_transaksi=tb_jual_global.kd_transaksi '+
'where tb_jual_global.tgl_transaksi=date(now()) and tb_jual_global.kd_user= "'+
f_transaksi.Sb.Panels[2].Text+'"  and tb_jual_global.kd_pengawas = "'+F_transaksi.Sb.Panels[4].Text+'" and tb_jual_global.tunai= 0 and tb_jual_global.kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'" ',true);
Ed_Kredit.Value:= dm.Q_temp.fieldbyname('sum_total').AsInteger;

fungsi.SQLExec(dm.Q_temp,'select sum(tb_jual_rinci.total_harga) as sum_total from tb_jual_rinci inner join '+
'tb_jual_global on  tb_jual_rinci.no_transaksi=tb_jual_global.kd_transaksi '+
'where tb_jual_global.tgl_transaksi=date(now()) and tb_jual_global.kd_user= "'+
f_transaksi.Sb.Panels[2].Text+'"  and tb_jual_global.kd_pengawas = "'+F_transaksi.Sb.Panels[4].Text+'" and tb_jual_global.kd_perusahaan="'+
f_transaksi.sb.Panels[1].Text+'" and tb_jual_global.tunai= 1',true);
Ed_Total.Value:= dm.Q_temp.fieldbyname('sum_total').AsInteger;

fungsi.SQLExec(dm.Q_temp,'select sum(total_return) as sum_return from tb_return_jual where user="'+
f_transaksi.Sb.Panels[2].Text+'"  and pengawas = "'+F_transaksi.Sb.Panels[4].Text+'" and tgl_return=date(now()) and kd_perusahaan="'+
f_transaksi.sb.Panels[1].Text+'"',true);

ed_return.Value:= dm.Q_temp.FieldByName('sum_return').AsInteger;

ed_setor.Value:= ed_total.Value-ed_return.Value;

if gb_tutup.visible=true then sbutton1.setfocus;
}
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
{dm.My_Conn.StartTransaction;
try
if (Ed_Total.Value=0) and (Ed_Kredit.Value=0) then
begin
  fungsi.SQLExec(dm.Q_exe,'update tb_login_kasir set status=''offline'',transaksi="'+ed_transaksi.Text+'",Tr_barang="'+ed_barangt.Text
  +'",Qty_barang="'+ed_barangQ.Text+'",return_jual="'+ed_return.Text+'",void="'+ed_voidQ.Text
  +'",discount="'+ed_disc.Text+'",price_oh="'+ed_total.Text+'", kredit="'+ed_kredit.Text+'", jumlah_setor_oh="'+ed_setor.Text
  +'" where kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'" and user="'+F_transaksi.Sb.Panels[2].Text
  +'"  and kd_jaga = "'+F_transaksi.Sb.Panels[4].Text+'" and tanggal=date(now())',false);
end else
begin
  fungsi.SQLExec(dm.Q_exe,'update tb_login_kasir set transaksi="'+ed_transaksi.Text+'",Tr_barang="'+ed_barangt.Text
  +'",Qty_barang="'+ed_barangQ.Text+'",return_jual="'+ed_return.Text+'",void="'+ed_voidQ.Text
  +'",discount="'+ed_disc.Text+'",price_oh="'+ed_total.Text+'", kredit="'+ed_kredit.Text+'", jumlah_setor_oh="'+ed_setor.Text
  +'" where kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'" and user="'+F_transaksi.Sb.Panels[2].Text
  +'"  and kd_jaga = "'+F_transaksi.Sb.Panels[4].Text+'" and status=''online''',false);
end;

dm.My_Conn.Commit;
showmessage('proses Penutupan Kasir Berhasil');
application.Terminate;
except on e:exception do begin
  dm.My_conn.Rollback;
  showmessage('proses tutup kasir gagal '#10#13'' +e.Message);
  end;
end;}
end;

end.
