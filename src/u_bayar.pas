unit u_bayar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sCurrEdit, sCurrencyEdit,
  sLabel, sEdit, sComboBox, ExtCtrls, sPanel, sButton, UFungsi, StdCtrls,
  Mask, sMaskEdit, sCustomComboEdit;

type
  TF_Bayar = class(TForm)
    sLabel0: TLabel;
    edBesar: TsCurrencyEdit;
    sLabel1: TLabel;
    sLabel2: TLabel;
    sLabel3: TLabel;
    sLabel4: TLabel;
    sLabel5: TLabel;
    sLabel6: TLabel;
    edKembali: TsCurrencyEdit;
    cbBank: TComboBox;
    edNomerKartu: TEdit;
    edDebit: TsCurrencyEdit;
    edTarik: TsCurrencyEdit;
    edTunai: TsCurrencyEdit;
    pnlAtas: TPanel;
    pnlBawah: TPanel;
    btnSimpan: TButton;
    btnBatal: TButton;
    sLabel7: TLabel;
    edTotalDebit: TsCurrencyEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditChange(Sender: TObject);
    procedure CompEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    TotalHarga: Extended;
    { Public declarations }
  end;

var
  F_Bayar: TF_Bayar;

implementation

uses
  u_dm;

{$R *.dfm}

procedure TF_Bayar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close
  else if Key = VK_RETURN then
  begin
    PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE);
    if cbBank.Focused then
      edNomerKartu.SetFocus
    else if edNomerKartu.Focused then
      edDebit.SetFocus
    else if edDebit.Focused then
      edTarik.SetFocus
    else if edTarik.Focused then
      edTunai.SetFocus
    else if edTunai.Focused then
    begin
      if btnSimpan.Enabled then
        btnSimpan.SetFocus;
    end;
  end;
end;

procedure TF_Bayar.EditChange(Sender: TObject);
begin
  edBesar.Value := TsCurrencyEdit(Sender).Value;

  edTotalDebit.Value := edDebit.Value + edTarik.Value;
  edKembali.Value := edTunai.Value + edDebit.Value - TotalHarga + edTarik.Value;
  if edKembali.AsInteger < 0 then
    btnSimpan.Enabled := False
  else
    btnSimpan.Enabled := True;
end;

procedure TF_Bayar.CompEnter(Sender: TObject);
begin
  pnlAtas.Visible := False;

  if Sender is TsCurrencyEdit then
  begin
    pnlAtas.Visible := True;
    sLabel0.Caption := StringReplace(TsCurrencyEdit(Sender).Name, 'ed', '', [rfReplaceAll]);
    edBesar.Value := TsCurrencyEdit(Sender).Value;
  end
  else if TButton(Sender) = btnSimpan then
  begin
    pnlAtas.Visible := True;
    edBesar.Value := edKembali.Value;
    sLabel0.Caption := 'Kembali';
  end;
end;

procedure TF_Bayar.FormShow(Sender: TObject);
begin
  fungsi.SQLExec(dm.Q_temp, 'SELECT * FROM tb_debit ORDER BY debit_id', True);
  while not dm.Q_temp.Eof do
  begin
    cbBank.Items.Add(dm.Q_temp.FIeldByName('bank').AsString);
    dm.Q_temp.Next;
  end;
  cbBank.ItemIndex := 0;
end;

end.

