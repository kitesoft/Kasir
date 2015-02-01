program kasir;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  u_trans in 'u_trans.pas' {F_Transaksi},
  u_dm in 'u_dm.pas' {dm: TDataModule},
  U_fungsi in 'U_fungsi.pas',
  U_Cari_pel in 'U_Cari_pel.pas' {F_Cari_pelanggan},
  U_ubah_satuan in 'U_ubah_satuan.pas' {F_Ubah_Satuan},
  U_Login in 'U_Login.pas' {F_Login},
  u_jual_kasir in 'u_jual_kasir.pas' {F_Jual_Kasir},
  U_Return_Jual in 'U_Return_Jual.pas' {F_Return_Jual},
  u_list_jual in 'u_list_jual.pas' {f_list_sales},
  u_hari in 'u_hari.pas' {f_hari},
  u_cariBarang in 'u_cariBarang.pas' {f_cariBarang},
  u_cari in 'u_cari.pas' {f_cari},
  u_returnJual in 'u_ReturnJual.pas' {f_returnJual};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Point Of Sales';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TF_Transaksi, F_Transaksi);
  Application.Run;
end.
