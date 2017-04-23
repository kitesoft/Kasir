program kasir;

uses
  Forms,
  u_trans in '..\src\u_trans.pas' {F_Transaksi},
  u_dm in '..\src\u_dm.pas' {dm: TDataModule},
  UFungsi in '..\..\tools\pascal\UFungsi.pas',
  U_ubah_satuan in '..\src\U_ubah_satuan.pas' {F_Ubah_Satuan},
  U_Login in '..\src\U_Login.pas' {F_Login},
  u_list_jual in '..\src\u_list_jual.pas' {f_list_sales},
  u_hari in '..\src\u_hari.pas' {f_hari},
  u_cariBarang in '..\src\u_cariBarang.pas' {f_cariBarang},
  u_cari in '..\src\u_cari.pas' {f_cari},
  u_returnJual in '..\src\u_ReturnJual.pas' {f_returnJual},
  u_bayar in '..\src\u_bayar.pas' {F_Bayar},
  u_setting in '..\src\u_setting.pas' {FSetting};

{$R *.res}



begin
  Application.Initialize;
  Application.Title := 'Point Of Sales';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TF_Transaksi, F_Transaksi);
  Application.Run;
end.

