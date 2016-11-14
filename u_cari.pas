unit u_cari;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, U_fungsi, StdCtrls, sEdit, sButton, ExtCtrls,
  DBCtrls, sSkinProvider, cxCustomData, cxGraphics,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxStyles,
  cxFilter, cxData, mySQLDbTables;

type
  NewControl = class(TControl);
  Tf_cari = class(TForm)
    sSkinProvider1: TsSkinProvider;
    Ed_cari: TsEdit;
    grid: TcxGrid;
    t_data: TcxGridDBTableView;
    clm1: TcxGridDBColumn;
    clm2: TcxGridDBColumn;
    clm3: TcxGridDBColumn;
    clm4: TcxGridDBColumn;
    l_data: TcxGridLevel;
    ds_cari: TDataSource;
    Q_cari: TmySQLQuery;
    b_keluar: TsButton;
    B_Ambil: TsButton;
    procedure tampil_button(lihatA,lihatB: boolean);
    procedure Ed_cariChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure t_dataDblClick(Sender: TObject);
    procedure Ed_cariKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure t_dataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure B_AmbilClick(Sender: TObject);
    procedure refresh;
  private
    { Private declarations }
  public
    _SQLi: string;
    TblCap: array [0..3] of string;
    TblVal: array [0..3] of string;
    CariT: Integer;
    Fsumber:TForm;
    { Public declarations }
  end;

var
  F_cari:TF_cari;
  kondisi,nm_tabel: string;
  TblTemp : TStringList;
  
implementation

uses u_dm, u_returnJual;

{$R *.dfm}


function cari_tabel(sql:string):string;
var  nPos,npos2,npos3   : integer;
begin
  nPos:= Pos( 'from', sql );
  delete(sql,1,npos+4);

  npos2:= pos(' ',sql);
  npos3:= length(sql);
  delete(sql,npos2,npos3);

  result:= sql;
end;

function cari_kondisi(sql:string):string;
var  nPos   : integer;
begin
  nPos:= Pos('where', LowerCase(sql) );
  if nPos<> 0 then
  delete(sql,1,npos+5) else
  sql:='';
  
  result:= sql;
end;

procedure Tf_cari.Ed_cariChange(Sender: TObject);
var saringan: string;
    x: Integer;
begin
  for x:= 0 to q_cari.FieldCount-1 do
    saringan := saringan + q_cari.Fields[x].FieldName+' like "%'+ed_cari.Text+'%" or ';

  delete(saringan,Length(saringan)-3,4);

  fungsi.SQLExec(q_cari,'select '+TblTemp.CommaText+' from '+
      nm_tabel +' where '+ kondisi +'('+ saringan +') limit 0,100',true);
end;

procedure Tf_cari.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=vk_escape then close;

if key=vk_f2 then ed_cari.SetFocus;

if key=vk_up then
begin
//Q_cari.Prior;
t_data.DataController.FocusedRowIndex:=t_data.DataController.FocusedRowIndex-1;
key:=VK_NONAME;
end;

if key=vk_down then
begin
//Q_cari.Next;
t_data.DataController.FocusedRowIndex:=t_data.DataController.FocusedRowIndex+1;
end;
end;

procedure Tf_cari.tampil_button(lihatA,lihatB: boolean);
begin
  B_Ambil.Visible:= lihatB;
end;

procedure Tf_cari.FormShow(Sender: TObject);
var x: Integer;
begin
fungsi.SQLExec(Q_cari,_SQLi + ' limit 0,100',True);

nm_tabel:= cari_tabel(_SQLi);

  if cari_kondisi(_SQLi)<>'' then
    kondisi:= cari_kondisi(_SQLi)+ ' AND ' else
    kondisi:='';

  TblTemp.Clear;

  for x:= 0 to q_cari.FieldCount-1 do
  begin
    TblTemp.Add(q_cari.Fields[x].FieldName);
  end;

{
if f_utama.sb.Panels[8].Text='PUSAT' then
begin
  tampil_button(True,True);
end else
begin
  if tipe_cari in [8,9,11,12] then
  begin
  tampil_button(True,True);
  end else
  begin
  tampil_button(False,True);
  end;
end;
}
  for x:= 0 to q_cari.FieldCount-1 do
  begin
  TcxGridDBColumn(FindComponent('clm'+IntToStr(x+1))).DataBinding.FieldName :=
      q_cari.Fields[x].FieldName;
  TcxGridDBColumn(FindComponent('clm'+IntToStr(x+1))).Visible:= True;
  TcxGridDBColumn(FindComponent('clm'+IntToStr(x+1))).Caption:= tblCap[x];
  end;
end;

procedure Tf_cari.t_dataDblClick(Sender: TObject);
begin
B_AmbilClick(Sender);
end;

procedure Tf_cari.Ed_cariKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_return then
begin
PeekMessage(Mgs, 0, WM_CHAR, WM_CHAR, PM_REMOVE );
B_AmbilClick(Sender);
end;
end;

procedure Tf_cari.t_dataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key= vk_return then
B_AmbilClick(Sender);
end;

procedure Tf_cari.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//action:=cafree;
//f_cari:=nil;
end;


procedure Tf_cari.B_AmbilClick(Sender: TObject);
var x: Integer;
begin
  for x:= 0 to q_cari.FieldCount-1 do
  begin
  TblVal[x]:= q_cari.fieldbyname(TcxGridDBColumn(FindComponent('clm'+IntToStr(x+1))).DataBinding.FieldName).AsString;
  end;
  ModalResult:= mrOk;
end;


procedure Tf_cari.refresh;
var posisi:integer;
begin
posisi:= t_data.DataController.DataSource.DataSet.RecNo;
t_data.DataController.DataSource.DataSet.Close;
t_data.DataController.DataSource.DataSet.Open;
t_data.DataController.DataSource.DataSet.RecNo:= posisi;
end;

initialization
  TblTemp := TStringList.Create;

finalization
  TblTemp.Free;
  
end.
