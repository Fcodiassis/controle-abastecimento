unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, RLReport;

type
  TfrmPrincipal = class(TForm)
    spbSair: TSpeedButton;
    rfgAgrReport: TRadioGroup;
    spbGrafico: TSpeedButton;
    spbReport: TSpeedButton;
    procedure spbReportClick(Sender: TObject);
    procedure spbSairClick(Sender: TObject);
    procedure spbGraficoClick(Sender: TObject);
  private
    { Private declarations }
    procedure DefinirSQLText;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untReport, untDMReport, untGrafico;

procedure TfrmPrincipal.DefinirSQLText;
var
  vSql: String;
begin
  //
  vSql := 'SELECT '+
      ' A.ID_MOVIMENTO, '+
      ' A.DT_MOVIMENTO, '+
      ' C.DESC_TANQUE, '+
      ' B.DESC_BOMBA, '+
      ' D.DESC_COMBUST, '+
      ' A.QTD_LITROS, '+
      ' A.VLR_ABASTEC, '+
      ' A.VLR_IMPOSTO, '+
      ' SUBSTR(DATE(A.DT_MOVIMENTO),1,7) ANO_MES, '+
      ' R.DATA_FIM, R.DATA_INI '+
      ' FROM MOVIMENTO A '+
      ' INNER JOIN BOMBA B ON A.ID_BOMBA = B.ID_BOMBA '+
      ' INNER JOIN TANQUE C ON B.ID_TANQUE = C.ID_TANQUE '+
      ' INNER JOIN COMBUSTIVEL D ON C.ID_cOMBUST = D.ID_COMBUST '+
      ' INNER JOIN REPORT R ON A.DT_MOVIMENTO >= R.DATA_INI AND A.DT_MOVIMENTO <= R.DATA_FIM';
  //
  DMReport.qryReport.Close;
  DMReport.qryReport.SQL.Clear;
  DMReport.qryReport.SQL.Add(vSql);
end;

procedure TfrmPrincipal.spbGraficoClick(Sender: TObject);
begin

  DefinirSQLText;
  //
  DMReport.qryReport.SQL.Add('ORDER BY A.DT_MOVIMENTO, D.DESC_COMBUST');
  DMReport.qryReport.Open;
  //
  frmGrafico.DBCrossTabSource1.Active := True;
  frmGrafico.ShowModal;
end;

procedure TfrmPrincipal.spbReportClick(Sender: TObject);
begin

  DefinirSQLText;
  //
  frmReport.rlLabTipoGrupo.Caption := rfgAgrReport.Items[rfgAgrReport.ItemIndex];
  frmReport.rlLabGrupo.Caption := rfgAgrReport.Items[rfgAgrReport.ItemIndex]+':';
  //
  if rfgAgrReport.ItemIndex = 0 then
  begin
    DMReport.qryReport.SQL.Add('ORDER BY D.DESC_COMBUST, A.DT_MOVIMENTO, B.DESC_BOMBA');
    DMReport.qryReport.Open;
    //
    frmReport.rlGrupo.DataFields := 'DESC_COMBUST';
    frmReport.rldbDbGrupo.DataField := 'DESC_COMBUST';
    frmReport.rlLabDetalhe.Caption:= 'Bomba';
    frmReport.rldbDbDetalhe.DataField := 'DESC_BOMBA';
  end
  else if rfgAgrReport.ItemIndex = 1 then
  begin
    DMReport.qryReport.SQL.Add('ORDER BY B.DESC_BOMBA, A.DT_MOVIMENTO, D.DESC_COMBUST');
    DMReport.qryReport.Open;
    //
    frmReport.rlGrupo.DataFields := 'DESC_BOMBA';
    frmReport.rldbDbGrupo.DataField := 'DESC_BOMBA';
    frmReport.rlLabDetalhe.Caption:= 'Combustível';
    frmReport.rldbDbDetalhe.DataField := 'DESC_COMBUST';
  end
  else if rfgAgrReport.ItemIndex = 2 then
  begin
    DMReport.qryReport.SQL.Add('ORDER BY A.DT_MOVIMENTO, A.ID_MOVIMENTO');
    DMReport.qryReport.Open;
    //
    frmReport.rlGrupo.DataFields := 'ANO_MES';
    frmReport.rldbDbGrupo.DataField := 'ANO_MES';
    frmReport.rlLabDetalhe.Caption:= 'Bomba';
    frmReport.rldbDbDetalhe.DataField := 'DESC_BOMBA';
    //
    frmReport.rlLabGrupTanq.Visible := False;
    frmReport.rlDbGrupTanq.Visible := False;
  end;
  frmReport.RLReport1.Preview;

end;

procedure TfrmPrincipal.spbSairClick(Sender: TObject);
begin
  Close;
end;

end.
