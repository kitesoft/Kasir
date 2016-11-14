unit U_Cari_pel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, sBitBtn, sEdit, Grids, DBGrids,
  sSkinProvider, UFungsi;

type
  NewControl = class(TControl);
  TF_Cari_pelanggan = class(TForm)
    DB_Cari: TDBGrid;
    ed_cari: TsEdit;
    B_pilih: TsBitBtn;
    DS_pel: TDataSource;
    sSkinProvider1: TsSkinProvider;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure B_pilihClick(Sender: TObject);
    procedure ed_cariChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DB_CariDblClick(Sender: TObject);
  private
    procedure DBGridScroll(var Message: TMessage);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cari_pelanggan: TF_Cari_pelanggan;

implementation

uses u_trans, u_dm;

{$R *.dfm}

procedure TF_Cari_Pelanggan.DBGridScroll(var Message: TMessage);
var count : short;
begin
if (Message.Msg = WM_MOUSEWHEEL) then
begin
  count:=HIWORD(Message.WParam);
  count:=count div 120;
  DB_Cari.DataSource.DataSet.MoveBy(-count);
end
else
  NewControl(DB_Cari).WndProc(Message);
end;

procedure TF_Cari_pelanggan.FormCreate(Sender: TObject);
begin
DB_Cari.WindowProc := DBGridScroll;
end;

procedure TF_Cari_pelanggan.FormShow(Sender: TObject);
begin
fungsi.sqlExec(dm.Q_Show,'SELECT * FROM vw_pelanggan where kd_perusahaan="'+dm.kd_perusahaan+'" order by n_pelanggan LIMIT 0, 14', true);
end;

procedure TF_Cari_pelanggan.B_pilihClick(Sender: TObject);
begin
F_transaksi.Ed_Pelanggan.Text:= dm.Q_show.FieldByName('kd_pelanggan').AsString;
F_transaksi.L_nm_pel.Caption:= dm.Q_show.FieldByName('n_pelanggan').AsString;
close;
end;

procedure TF_Cari_pelanggan.ed_cariChange(Sender: TObject);
begin
fungsi.sqlExec(dm.Q_Show,'SELECT * FROM vw_pelanggan where (kd_perusahaan="'
+ dm.kd_perusahaan +'") and ((kd_pelanggan like "%'+ed_cari.Text
+'%") or (n_pelanggan like "%'+ed_cari.Text+'%")) order by n_pelanggan LIMIT 0, 14', true);
end;

procedure TF_Cari_pelanggan.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
ed_cari.SetFocus;

if key=vk_escape then close;

if (key=vk_down) or (key=vk_right) then dm.Q_Show.Next;
if (key=vk_up) or (key=vk_left) then dm.Q_Show.Prior;
end;

procedure TF_Cari_pelanggan.DB_CariDblClick(Sender: TObject);
begin
B_pilihClick(Sender);
end;

end.
