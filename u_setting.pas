unit u_setting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sButton, sGroupBox, ComCtrls, sTrackBar,
  ToolWin, ExtCtrls, Buttons, sSpeedButton, cxTrackBar, sLabel;

type
  TFSetting = class(TForm)
    gb1: TsGroupBox;
    EdSkin: TsEdit;
    TbHue: TsTrackBar;
    TbSaturation: TsTrackBar;
    gb2: TsGroupBox;
    cbFontName: TComboBox;
    crb_bg: TColorBox;
    cbsize: TComboBox;
    cbspeed: TComboBox;
    crb_font: TColorBox;
    cb_aktif: TComboBox;
    tlb1: TToolBar;
    btnBold: TToolButton;
    btnItalic: TToolButton;
    btnUnderline: TToolButton;
    Sb1: TsSpeedButton;
    Sb2: TsSpeedButton;
    BtnSimpan: TsButton;
    gb3: TsGroupBox;
    ed_footer_struk: TEdit;
    cb_jenis_struk: TComboBox;
    cb_lebar_struk: TComboBox;
    Lbl1: TsLabel;
    Lbl2: TsLabel;
    ed_tambahan: TEdit;
    Lbl3: TsLabel;
    procedure TbHueChange(Sender: TObject);
    procedure TbSaturationChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Sb2Click(Sender: TObject);
    procedure btnStyleClick(Sender: TObject);
    procedure Sb1Click(Sender: TObject);
    procedure BtnSimpanClick(Sender: TObject);
  private
    procedure M_pesanOnChange(Sender: TObject; var Action: TCloseAction);
    { Private declarations }
  public
    F_pesan: TForm;
    M_pesan: TMemo;
    { Public declarations }
  end;

var
  FSetting: TFSetting;

implementation

uses u_dm, acselectskin, UFungsi, u_trans;

{$R *.dfm}

procedure TFSetting.TbHueChange(Sender: TObject);
begin
  dm.sm.HueOffset := TbHue.Position;
end;

procedure TFSetting.TbSaturationChange(Sender: TObject);
begin
  dm.sm.Saturation := TbSaturation.Position;
end;

procedure TFSetting.FormShow(Sender: TObject);
begin
  // skin
  EdSkin.Text := dm.sm.SkinName;
  TbHue.Position := dm.sm.HueOffset;
  TbSaturation.Position := dm.sm.Saturation;

  // pesan
  cbFontName.Items.Assign(Screen.Fonts);
  CBFontName.Sorted := True;

  CBFontName.ItemIndex := CBFontName.Items.IndexOf(F_Transaksi.PsNamaFont);
  crb_bg.selected := F_Transaksi.PsBgColor;
  crb_font.selected := F_Transaksi.PsTextColor;
  cbsize.ItemIndex := cbsize.Items.IndexOf(IntToStr(F_Transaksi.PsSizeFont));
  cbspeed.ItemIndex := cbspeed.Items.IndexOf(IntToStr(F_Transaksi.PsSpeedPesan));
  cb_aktif.ItemIndex := F_Transaksi.PesanAktif;

  if fsbold in F_Transaksi.StylePesan then
    btnBold.Down := True;
  if fsitalic in F_Transaksi.StylePesan then
    btnItalic.Down := True;
  if fsunderline in F_Transaksi.StylePesan then
    btnUnderline.Down := True;

  // Struk
  cb_jenis_struk.ItemIndex := F_Transaksi.StJenis;
  cb_lebar_struk.ItemIndex := cb_lebar_struk.Items.IndexOf(IntToStr(F_Transaksi.StLebar));
  ed_footer_struk.Text := F_Transaksi.StPesan;

  ed_tambahan.Text := F_Transaksi.InsertHarga;
end;

procedure TFSetting.Sb2Click(Sender: TObject);
begin
  if selectskin(dm.sm) then
  begin
    EdSkin.text := dm.sm.SkinName;
  end;
end;

procedure TFSetting.btnStyleClick(Sender: TObject);
begin
  if (Sender as TToolButton).Down then
  begin
    case (Sender as TToolButton).Tag of
      1:F_Transaksi.StylePesan := F_Transaksi.StylePesan + [fsBold];
      2:F_Transaksi.StylePesan := F_Transaksi.StylePesan + [fsItalic];
      3:F_Transaksi.StylePesan := F_Transaksi.StylePesan + [fsUnderline];
    end
  end
  else
  begin
    case (Sender as TToolButton).Tag of
      1:F_Transaksi.StylePesan := F_Transaksi.StylePesan - [fsBold];
      2:F_Transaksi.StylePesan := F_Transaksi.StylePesan - [fsItalic];
      3:F_Transaksi.StylePesan := F_Transaksi.StylePesan - [fsUnderline];
    end;
  end;
end;

procedure TFSetting.M_pesanOnChange(Sender: TObject; var Action: TCloseAction);
begin
  if M_pesan.Modified then
  begin
    F_Transaksi.Pesan := M_pesan.Text;
  end;
  Action := caFree;
end;

procedure TFSetting.Sb1Click(Sender: TObject);
begin
  F_pesan := TForm.Create(Self);
  F_pesan.Position := poScreenCenter;
  F_pesan.Caption := 'Pesan dari Text berjalan';
  M_Pesan := TMemo.Create(F_pesan);
  M_pesan.Parent := F_pesan;
  M_pesan.Align := alClient;
  M_pesan.Name := 'M_pesan';
  M_pesan.Clear;
  M_pesan.Text := F_Transaksi.pesan;
  M_pesan.ParentFont := False;
  M_pesan.ParentColor := False;
  M_pesan.ScrollBars := ssVertical;
  M_pesan.Font.Name := cbFontName.Text;
  M_pesan.Font.Style := F_Transaksi.StylePesan;
  M_pesan.Color := crb_bg.Selected;
  M_pesan.Font.Color := crb_font.Selected;
  M_pesan.Font.Size := strtoint(cbsize.text);

  M_pesan.Visible := True;
  F_pesan.OnClose := M_pesanonChange;
  F_pesan.ShowModal;
end;

procedure TFSetting.BtnSimpanClick(Sender: TObject);
begin
  // Simpan Skin
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'hue_skin', IntToStr(TbHue.Position));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'sat_skin', IntToStr(TbSaturation.Position));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'nama_skin', EdSkin.Text);

  // Simpan Pesan
  F_Transaksi.PsNamaFont:= cbFontName.Text;
  F_Transaksi.PsBgColor := crb_bg.selected;
  F_Transaksi.PsTextColor := crb_font.selected;
  F_Transaksi.PsSizeFont := StrToInt(cbsize.Text);
  F_Transaksi.PsSpeedPesan := StrToInt(cbspeed.Text);
  F_Transaksi.PesanAktif := cb_aktif.ItemIndex;

  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'pesan', m_pesan.text);
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'pesan_aktif', IntToStr(F_Transaksi.PesanAktif));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'nama_font', F_Transaksi.PsNamaFont);
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'style_font', IntToStr(Byte(F_Transaksi.StylePesan)));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'bg_font', ColorToString(F_Transaksi.PsBgColor));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'cl_font', ColorToString(F_Transaksi.PsTextColor));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'size_font', IntToStr(F_Transaksi.PsSizeFont));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'speed', IntToStr(F_Transaksi.PsSpeedPesan));

  if cb_aktif.ItemIndex = 1 then
    F_Transaksi.aktifkan_pesan;

  // Simpan Struk
  F_Transaksi.StJenis := cb_jenis_struk.ItemIndex;
  F_Transaksi.StLebar := StrToIntDef(cb_lebar_struk.Text, 38);
  F_Transaksi.StPesan := ed_footer_struk.Text;

  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'jenis_struk', IntToStr(cb_jenis_struk.ItemIndex));
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'lebar_struk', cb_lebar_struk.Text);
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'footer_struk', ed_footer_struk.Text);

  F_Transaksi.InsertHarga := ed_tambahan.Text;
  fungsi.SimpanIniFile(dm.file_ini, 'kasir', 'tambahan', F_Transaksi.InsertHarga);
  Close;
end;

end.
