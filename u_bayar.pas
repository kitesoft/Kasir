unit u_bayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, sMaskEdit, sCustomComboEdit, sCurrEdit,
  sCurrencyEdit, sLabel, sEdit, sComboBox, ExtCtrls, sPanel, sButton;

type
  TF_Bayar = class(TForm)
    sLabel0: TsLabel;
    edBesar: TsCurrencyEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    edKembali: TsCurrencyEdit;
    cbBank: TsComboBox;
    edNomerKartu: TsEdit;
    edDebit: TsCurrencyEdit;
    edTarik: TsCurrencyEdit;
    edTunai: TsCurrencyEdit;
    pnlAtas: TsPanel;
    pnlBawah: TsPanel;
    btnSimpan: TsButton;
    btnBatal: TsButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TotalKembalian;
    procedure EditChange(Sender: TObject);
  private
    { Private declarations }
  public
    TotalHarga: Extended;
    { Public declarations }
  end;

var
  F_Bayar: TF_Bayar;
  Mgs : TMsg;

implementation

{$R *.dfm}

procedure TF_Bayar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then Close else
//  if Key = VK_F11 then SimpanData else
  if Key = VK_RETURN then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE );
    if cbBank.Focused then edNomerKartu.SetFocus else
    if edNomerKartu.Focused then edDebit.SetFocus else
    if edDebit.Focused then edTarik.SetFocus else
    if edTarik.Focused then edTunai.SetFocus else
    if edTunai.Focused then btnSimpan.SetFocus;
  end;
end;

procedure TF_Bayar.TotalKembalian;
begin
  edKembali.Value:= edTunai.Value + edDebit.Value - TotalHarga + edTarik.Value;
end;

procedure TF_Bayar.EditChange(Sender: TObject);
begin
  edBesar.Value := TsCurrencyEdit(Sender).Value;
  sLabel0.Caption:= StringReplace(TsCurrencyEdit(Sender).Name,'ed','',[rfReplaceAll]);
end;

end.
