program kasir;

uses
  Vcl.Forms,
  u_bayar in '..\src\u_bayar.pas' {F_Bayar},
  u_cari in '..\src\u_cari.pas' {f_cari},
  u_cariBarang in '..\src\u_cariBarang.pas' {f_cariBarang},
  u_dm in '..\src\u_dm.pas' {dm: TDataModule},
  u_hari in '..\src\u_hari.pas' {f_hari},
  u_list_jual in '..\src\u_list_jual.pas' {f_list_sales},
  U_Login in '..\src\U_Login.pas' {F_Login},
  u_ReturnJual in '..\src\u_ReturnJual.pas' {f_returnJual},
  u_setting in '..\src\u_setting.pas' {FSetting},
  u_trans in '..\src\u_trans.pas' {F_Transaksi},
  U_ubah_satuan in '..\src\U_ubah_satuan.pas' {F_Ubah_Satuan},
  UFungsi in '..\..\tools\pascal\UFungsi.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TF_Transaksi, F_Transaksi);
  Application.Run;
end.
