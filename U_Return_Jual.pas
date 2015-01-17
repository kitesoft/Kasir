unit U_Return_Jual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, sEdit, Grids, DBGrids, DB, Buttons,
  sSpeedButton, sButton, U_fungsi, sGroupBox, sSkinProvider;

type
  TF_Return_Jual = class(TForm)
    Ed_kd_transaksi: TsEdit;
    sLabel1: TsLabel;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    sb_cari_barang: TsSpeedButton;
    sLabel2: TsLabel;
    sGroupBox1: TsGroupBox;
    Ed_Kd_Barang: TsEdit;
    Ed_Nama: TsEdit;
    Ed_Qty: TsEdit;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    B_Simpan: TsButton;
    B_baru: TsButton;
    sg: TStringGrid;
    sSkinProvider1: TsSkinProvider;
    l_return: TsLabel;
    procedure buat_kdReturn;
    procedure FormShow(Sender: TObject);
    procedure Ed_kd_transaksiChange(Sender: TObject);
    procedure Ed_Kd_BarangKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_kd_transaksiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Ed_QtyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
      procedure baru;
    procedure B_baruClick(Sender: TObject);
    procedure B_SimpanClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Return_Jual: TF_Return_Jual;
  fungsi:Tfungsi;
  i,bayar:integer;
implementation

uses u_dm,  u_trans;

{$R *.dfm}

procedure TF_Return_Jual.baru;
begin;
  with SG do
  begin
  ColCount:=6;
  RowCount:=2;
  FixedCols:=0;
  DefaultROwHeight:=22;
  Rows[1].Clear;
  Cells[0,0]:='PID';
  Cells[1,0]:='Nama Barang';
  Cells[2,0]:='Qty';
  Cells[3,0]:='Netto';
  Cells[4,0]:='Total';
  Cells[5,0]:='';

//lebar kolom
  ColWidths[0]:=70;
  ColWidths[1]:=240;
  ColWidths[2]:=45;
  ColWidths[3]:=80;
  ColWidths[4]:=80;
  colwidths[5]:=500
end;
Ed_Kd_transaksi.Clear;
ed_kd_transaksi.SetFocus;
ed_kd_barang.Clear;
ed_qty.Clear;
ed_nama.Clear;
i:=0;
b_simpan.Enabled:=false;
buat_kdReturn;
end;

procedure TF_Return_Jual.FormShow(Sender: TObject);
begin
baru;
end;

procedure TF_Return_Jual.Ed_kd_transaksiChange(Sender: TObject);
begin
fungsi.SQLExec(dm.Q_show,'SELECT * from `tb_jual_rinci` INNER JOIN `tb_jual_global` '+
'on`tb_jual_global`.`kd_transaksi` = `tb_jual_rinci`.`no_transaksi` where tb_jual_rinci.kd_perusahaan="'+f_transaksi.sb.Panels[1].Text+'" and `tb_jual_rinci`.`no_transaksi`="'+
ed_kd_transaksi.Text+'"',true);

slabel2.Caption:= dm.Q_show.fieldbyname('tgl_transaksi').AsString+' '+dm.Q_show.fieldbyname('jam_transaksi').AsString;
bayar := dm.Q_show.fieldbyname('tunai').AsInteger;
end;

procedure TF_Return_Jual.Ed_Kd_BarangKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
begin
 PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE );
  if ed_kd_barang.Text='' then b_simpan.SetFocus else
  begin
{    fungsi.SQLExec(dm.Q_temp,'SELECT * from vw_jual_barang where kd_perusahaan="'+
    f_transaksi.sb.Panels[1].Text+'" and no_transaksi="'+
    ed_kd_transaksi.Text+'" and kd_barang="'+ed_kd_barang.Text+'" and void_barang = 0',true);
}
    fungsi.SQLExec(dm.Q_temp,'SELECT * from `tb_jual_rinci` INNER JOIN `tb_jual_global` '+
    'on`tb_jual_global`.`kd_transaksi` = `tb_jual_rinci`.`no_transaksi` where tb_jual_rinci.kd_perusahaan="'+
    f_transaksi.sb.Panels[1].Text+'" and `tb_jual_rinci`.`no_transaksi`="'+
    ed_kd_transaksi.Text+'" and tb_jual_rinci.kd_barang="'+ed_kd_barang.Text+'" and tb_jual_rinci.void_barang = 0',true);

    if not(dm.Q_temp.Eof) then
    begin
      ed_nama.Text:=dm.Q_temp.fieldbyname('n_barang').Text;
      ed_qty.ReadOnly:= false;
      ed_qty.SetFocus;
      end else
      begin
      ed_nama.Text:='';
      ed_qty.ReadOnly:= true;
      ed_qty.Clear;
      ed_qty.SetFocus;
      ed_kd_barang.SetFocus;
      end;
    end;
  end;
end;


procedure TF_Return_Jual.Ed_kd_transaksiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key=vk_return then
begin
 PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE );
ed_kd_barang.SetFocus;
end;
end;

procedure TF_Return_Jual.Ed_QtyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_return then
begin
 PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE );
  if ed_qty.Text<>'' then
  begin
  if sg.Cells[0,1]<>'' then SG.RowCount:=SG.RowCount+1;//melihat apakah kode barang masih kosong atau sudah ada penghuninya
  sg.Cells[0,i+1]:= ed_kd_barang.Text;
  sg.Cells[1,i+1]:= dm.Q_temp.fieldbyname('n_barang').AsString;
  sg.Cells[2,i+1]:= ed_qty.Text;
  sg.Cells[3,i+1]:= inttostr(round(dm.Q_temp.fieldbyname('total_harga').AsFloat/dm.Q_temp.fieldbyname('Qty').AsFloat));
  sg.Cells[4,i+1]:= floattostr(strtofloat(sg.Cells[2,i+1])*strtofloat(sg.Cells[3,i+1]));
  sg.Cells[6,i+1]:= floattostr((strtofloat(dm.Q_temp.fieldbyname('harga_pokok').AsString)/strtofloat(dm.Q_temp.fieldbyname('qty').AsString))*strtointdef(ed_qty.text,0));

  i:=i+1;
  sg.Row:=i;

  ed_nama.Text:='';
  ed_qty.ReadOnly:= true;
  ed_qty.Clear;
  ed_kd_barang.Clear;
  ed_kd_barang.SetFocus;
  b_simpan.Enabled:=true;
  end;
end;
end;

procedure TF_Return_Jual.B_baruClick(Sender: TObject);
begin
baru;
end;

procedure TF_Return_Jual.B_SimpanClick(Sender: TObject);
var x : Integer;
begin
buat_kdReturn;

dm.My_Conn.StartTransaction;
 try
  for x:=1 to sg.RowCount-1 do
  begin
   fungsi.SQLExec(dm.Q_exe,'insert into tb_return_jual(kd_perusahaan,kd_transaksi,kd_return_jual, '+
   'tgl_return,jam_return,kd_barang,n_barang,Qty,harga_netto,total_return,`user`,pengawas,harga_pokok,tunai)values("'+
   f_transaksi.sb.Panels[1].Text+'","'+ed_kd_transaksi.Text+'","'+l_return.Caption
   +'",date(now()),time(now()),"'+SG.Cells[0,x]+'","'+SG.Cells[1,x]+'","'+SG.Cells[2,x]
   +'","'+SG.Cells[3,x]+'","'+SG.Cells[4,x]+'","'+f_transaksi.sb.Panels[2].Text+'","'+
   f_transaksi.sb.Panels[4].Text+'","'+SG.Cells[6,x]+'","'+inttostr(bayar)+'")',false);
  
  end;
   baru;
   dm.My_Conn.Commit;
   showmessage('penyimpanan data return berhasil..');
 except on e:exception do begin
   dm.My_conn.Rollback;
   showmessage('penyimpanan data return gagal '#10#13'' +e.Message);
  end;
 end;
end;

procedure TF_Return_Jual.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then close;
end;

procedure TF_Return_Jual.buat_kdReturn;
var a:integer;
kd_return,tgl,y: string;
begin
tgl:=formatdatetime('yyyyMMdd', date());
fungsi.SQLExec(dm.Q_temp,'select count(kd_return_jual) as jumlah from tb_return_jual where tgl_return=date(now()) and kd_perusahaan="'+
f_transaksi.sb.Panels[1].Text+'"',true);
  a:=dm.Q_temp.fieldbyname('jumlah').AsInteger+1;

  if a<10     then y:= 'RT-'+tgl+'-00' else
  if a<100    then y:= 'RT-'+tgl+'-0'else
  if a<1000   then y:= 'RT-'+tgl+'-';
  kd_return:=y+inttostr(a);

l_return.Caption := kd_return;

end;

end.
