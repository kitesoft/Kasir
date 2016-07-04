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
    Ed_Kembali: TsCurrencyEdit;
    cbBank: TsComboBox;
    edNomerKartu: TsEdit;
    edNonTunai: TsCurrencyEdit;
    edTarikTunai: TsCurrencyEdit;
    edTunai: TsCurrencyEdit;
    pnlAtas: TsPanel;
    pnlBawah: TsPanel;
    btnSimpan: TsButton;
    btnBatal: TsButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Bayar: TF_Bayar;

implementation

{$R *.dfm}

end.
