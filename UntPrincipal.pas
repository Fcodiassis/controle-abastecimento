unit UntPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Rtti, FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Controls.Presentation, FMX.ScrollBox, FMX.Grid, FMX.ListView, FMX.Edit,
  FMX.StdCtrls, Fmx.Bind.Navigator, System.Actions, FMX.ActnList,
  FMX.ListBox, FMX.Objects, FMX.DateTimeCtrls,
  FMXTee.Engine, FMXTee.Procs, FMXTee.Chart, FireDAC.Comp.Client,

  //Units acrescidas:
  Data.Db,
  ShellApi,
  IWSystem,
  TypInfo,
  Windows;

type
  TfrmPrincipal = class(TForm)
    tbCrlPrincipal: TTabControl;
    tbitMovimento: TTabItem;
    tbitBomba: TTabItem;
    tbitCombustivel: TTabItem;
    tbtTanque: TTabItem;
    tbitReport: TTabItem;
    grdCombustivel: TGrid;
    BindingsList1: TBindingsList;
    BindSDB_Combust: TBindSourceDB;
    grdTanque: TGrid;
    BindSDB_Tanque: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    grdBomba: TGrid;
    BindSDB_Bomba: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    ToolBar1: TToolBar;
    GroupBox1: TGroupBox;
    edtDescComb: TEdit;
    edtVlrComb: TEdit;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    spbEditar: TSpeedButton;
    spbExcluir: TSpeedButton;
    spbGravar: TSpeedButton;
    spbCancelar: TSpeedButton;
    spbNext: TSpeedButton;
    ActionList1: TActionList;
    LiveBindingsBindNavigateNext_Comb: TFMXBindNavigateNext;
    LiveBindingsBindNavigatePrior_Comb: TFMXBindNavigatePrior;
    spbPrior: TSpeedButton;
    GroupBox2: TGroupBox;
    ToolBar2: TToolBar;
    edtCapacid: TEdit;
    cmbCombust: TComboBox;
    spbEditar_tq: TSpeedButton;
    spbExcluir_tq: TSpeedButton;
    spbPrior_tq: TSpeedButton;
    spbNext_tq: TSpeedButton;
    spbGravar_tq: TSpeedButton;
    spbCancelar_tq: TSpeedButton;
    LiveBindingsBindNavigatePrior_Tanq: TFMXBindNavigatePrior;
    LiveBindingsBindNavigateNext_Tanq: TFMXBindNavigateNext;
    LinkControlToField3: TLinkControlToField;
    LinkFillControlToField1: TLinkFillControlToField;
    GroupBox3: TGroupBox;
    ToolBar3: TToolBar;
    spbEditar_Bb: TSpeedButton;
    spbExcluir_Bb: TSpeedButton;
    spbPrior_Bb: TSpeedButton;
    spbNext_Bb: TSpeedButton;
    spbGravar_Bb: TSpeedButton;
    spbCancelar_Bb: TSpeedButton;
    LiveBindingsBindNavigatePrior_Bomb: TFMXBindNavigatePrior;
    LiveBindingsBindNavigateNext_Bomb: TFMXBindNavigateNext;
    edtDescTanq: TEdit;
    LinkControlToField4: TLinkControlToField;
    edtBomba: TEdit;
    Label1: TLabel;
    cmbTanque: TComboBox;
    LinkControlToField5: TLinkControlToField;
    LinkFillControlToField2: TLinkFillControlToField;
    Label2: TLabel;
    Label3: TLabel;
    edtIDBb: TEdit;
    lbIDBomba: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtIDTnq: TEdit;
    lblIDTq: TLabel;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    edtIDComb: TEdit;
    Label8: TLabel;
    LinkControlToField8: TLinkControlToField;
    grdMovim: TGrid;
    GroupBox4: TGroupBox;
    ToolBar4: TToolBar;
    spbEditar_Mov: TSpeedButton;
    spbExcluir_Mov: TSpeedButton;
    spbGrava_Mov: TSpeedButton;
    spbCancela_Mov: TSpeedButton;
    spbNext_Mov: TSpeedButton;
    spbPrior_Mov: TSpeedButton;
    LiveBindingsBindNavigatePrior_Mov: TFMXBindNavigatePrior;
    LiveBindingsBindNavigateNext_Mov: TFMXBindNavigateNext;
    BindSDB_Movim: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB12: TLinkGridToDataSource;
    edtIDMov: TEdit;
    cmbBomba: TComboBox;
    edtValor: TEdit;
    edtImposto: TEdit;
    edtLitr: TEdit;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkFillControlToField3: TLinkFillControlToField;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    LinkControlToField9: TLinkControlToField;
    GroupBox5: TGroupBox;
    Image5: TImage;
    dtEdtInicial: TDateEdit;
    dedtDtMov: TDateEdit;
    LinkControlToField12: TLinkControlToField;
    Label9: TLabel;
    dtEdtFinal: TDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    spbNovo: TSpeedButton;
    spbNovo_tq: TSpeedButton;
    spbNovo_Bb: TSpeedButton;
    spbNovo_Mov: TSpeedButton;
    ToolBar5: TToolBar;
    spbReport: TSpeedButton;
    Panel1: TPanel;
    BindSDB_BombVinc: TBindSourceDB;
    LiveBindingsBindNavigateFirst_Mov: TFMXBindNavigateFirst;
    LiveBindingsBindNavigateLast_Mov: TFMXBindNavigateLast;
    spbLast_Mov: TSpeedButton;
    spbFirst_Mov: TSpeedButton;
    procedure spbEditarClick(Sender: TObject);
    procedure spbCancelarClick(Sender: TObject);
    procedure spbGravarClick(Sender: TObject);
    procedure spbExcluirClick(Sender: TObject);
    procedure spbExcluir_tqClick(Sender: TObject);
    procedure spbCancelar_tqClick(Sender: TObject);
    procedure spbGravar_tqClick(Sender: TObject);
    procedure spbEditar_tqClick(Sender: TObject);
    procedure spbEditar_BbClick(Sender: TObject);
    procedure spbExcluir_BbClick(Sender: TObject);
    procedure spbGravar_BbClick(Sender: TObject);
    procedure spbCancelar_BbClick(Sender: TObject);
    procedure spbEditar_MovClick(Sender: TObject);
    procedure spbExcluir_MovClick(Sender: TObject);
    procedure spbGrava_MovClick(Sender: TObject);
    procedure spbCancela_MovClick(Sender: TObject);
    procedure spbNovoClick(Sender: TObject);
    procedure spbNovo_tqClick(Sender: TObject);
    procedure spbNovo_BbClick(Sender: TObject);
    procedure spbNovo_MovClick(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure spbReportClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtivarDesativarComb(Sender: TObject);
    procedure AtivarDesativarTq(Sender: TObject);
    procedure AtivarDesativarBb(Sender: TObject);
    procedure AtivarDesativarMov(Sender: TObject);
    function IncrementaCodigo(vCampo, vTabela: String):Integer;
    procedure CalculaValores(Sender: TObject);
    procedure AtualizaTabela(Tabela: TFDQuery);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses UntDM;

procedure TfrmPrincipal.AtualizaTabela(Tabela: TFDQuery);
begin
  Tabela.Close;
  Tabela.Open;
end;

procedure TfrmPrincipal.AtivarDesativarMov(Sender: TObject);
begin
  //Botões
  spbNovo_Mov.Enabled      := not (DM.qryMovimento.State in dsEditModes);
  spbGrava_Mov.Enabled     :=     (DM.qryMovimento.State in dsEditModes);
  spbCancela_Mov.Enabled   :=     (DM.qryMovimento.State in dsEditModes);
  spbPrior_Mov.Visible     := not (DM.qryMovimento.State in dsEditModes);
  spbNext_Mov.Visible      := not (DM.qryMovimento.State in dsEditModes);
  spbFirst_Mov.Visible     := not (DM.qryMovimento.State in dsEditModes);
  spbLast_Mov.Visible      := not (DM.qryMovimento.State in dsEditModes);
  spbEditar_Mov.Enabled    := not (DM.qryMovimento.State in dsEditModes);
  spbExcluir_Mov.Enabled   := not (DM.qryMovimento.State in dsEditModes);
  grdMovim.Enabled         := not (DM.qryMovimento.State in dsEditModes);
  //Caixas de Texto
  dedtDtMov.Enabled    :=     (DM.qryMovimento.State in dsEditModes);
  edtLitr.Enabled      :=     (DM.qryMovimento.State in dsEditModes);
  edtValor.Enabled     :=     (DM.qryMovimento.State in dsEditModes);
  //edtImposto.Enabled     :=     (DM.qryMovimento.State in dsEditModes);
  cmbBomba.Enabled     :=     (DM.qryMovimento.State in dsEditModes);

end;

procedure TfrmPrincipal.AtivarDesativarComb(Sender: TObject);
begin
  //Botões
  spbNovo.Enabled        := not (DM.qryCombustivel.State in dsEditModes);
  spbGravar.Enabled      :=     (DM.qryCombustivel.State in dsEditModes);
  spbCancelar.Enabled    :=     (DM.qryCombustivel.State in dsEditModes);
  spbPrior.Visible       := not (DM.qryCombustivel.State in dsEditModes);
  spbNext.Visible        := not (DM.qryCombustivel.State in dsEditModes);
  spbEditar.Enabled      := not (DM.qryCombustivel.State in dsEditModes);
  spbExcluir.Enabled     := not (DM.qryCombustivel.State in dsEditModes);
  grdCombustivel.Enabled := not (DM.qryCombustivel.State in dsEditModes);
  //Caixas de Texto
  edtDescComb.Enabled    :=     (DM.qryCombustivel.State in dsEditModes);
  edtVlrComb.Enabled     :=     (DM.qryCombustivel.State in dsEditModes);
end;

procedure TfrmPrincipal.AtivarDesativarTq(Sender: TObject);
begin
  //Botões
  spbNovo_tq.Enabled     := not (DM.qryTanque.State in dsEditModes);
  spbGravar_tq.Enabled   :=     (DM.qryTanque.State in dsEditModes);
  spbCancelar_tq.Enabled :=     (DM.qryTanque.State in dsEditModes);
  spbPrior_tq.Visible    := not (DM.qryTanque.State in dsEditModes);
  spbNext_tq.Visible     := not (DM.qryTanque.State in dsEditModes);
  spbEditar_tq.Enabled   := not (DM.qryTanque.State in dsEditModes);
  spbExcluir_tq.Enabled  := not (DM.qryTanque.State in dsEditModes);
  grdTanque.Enabled      := not (DM.qryTanque.State in dsEditModes);
  //Caixas de Texto
  edtDescTanq.Enabled    :=     (DM.qryTanque.State in dsEditModes);
  edtCapacid.Enabled     :=     (DM.qryTanque.State in dsEditModes);
  cmbCombust.Enabled     :=     (DM.qryTanque.State in dsEditModes);
end;

procedure TfrmPrincipal.edtValorExit(Sender: TObject);
begin
  if DM.qryMovimento.State in [dsInsert,dsEdit] then
    CalculaValores(Sender);
end;

procedure TfrmPrincipal.AtivarDesativarBb(Sender: TObject);
begin
  //Botões
  spbNovo_Bb.Enabled     := not (DM.qryBomba.State in dsEditModes);
  spbGravar_Bb.Enabled   :=     (DM.qryBomba.State in dsEditModes);
  spbCancelar_Bb.Enabled :=     (DM.qryBomba.State in dsEditModes);
  spbPrior_Bb.Visible    := not (DM.qryBomba.State in dsEditModes);
  spbNext_Bb.Visible     := not (DM.qryBomba.State in dsEditModes);
  spbEditar_Bb.Enabled   := not (DM.qryBomba.State in dsEditModes);
  spbExcluir_Bb.Enabled  := not (DM.qryBomba.State in dsEditModes);
  grdBomba.Enabled       := not (DM.qryBomba.State in dsEditModes);
  //Caixas de Texto
  edtBomba.Enabled       :=     (DM.qryBomba.State in dsEditModes);
  cmbTanque.Enabled      :=     (DM.qryBomba.State in dsEditModes);
end;

procedure TfrmPrincipal.spbCancelarClick(Sender: TObject);
begin
  DM.qryCombustivel.Cancel;
  AtivarDesativarComb(Sender);
  //
  AtualizaTabela(DM.qryCombustivel);
end;

procedure TfrmPrincipal.spbCancelar_BbClick(Sender: TObject);
begin
  DM.qryBomba.Cancel;
  AtivarDesativarBb(Sender);
  //
  AtualizaTabela(DM.qryBomba);
end;

procedure TfrmPrincipal.spbCancelar_tqClick(Sender: TObject);
begin
  DM.qryTanque.Cancel;
  AtivarDesativarTq(Sender);
  //
  AtualizaTabela(DM.qryTanque);
end;

procedure TfrmPrincipal.spbCancela_MovClick(Sender: TObject);
begin
  DM.qryMovimento.Cancel;
  AtivarDesativarMov(Sender);
  //
  AtualizaTabela(DM.qryMovimento);
end;

procedure TfrmPrincipal.spbEditarClick(Sender: TObject);
begin
  DM.qryCombustivel.Edit;
  //
  AtivarDesativarComb(Sender);
  edtDescComb.SetFocus;
end;

procedure TfrmPrincipal.spbEditar_BbClick(Sender: TObject);
begin
  DM.qryBomba.Edit;
  AtivarDesativarBb(Sender);
  edtBomba.SetFocus;
end;

procedure TfrmPrincipal.spbEditar_MovClick(Sender: TObject);
begin
  DM.qryMovimento.Edit;
  AtivarDesativarMov(Sender);
  dedtDtMov.SetFocus;
end;

procedure TfrmPrincipal.spbEditar_tqClick(Sender: TObject);
begin
  DM.qryTanque.Edit;
  AtivarDesativarTq(Sender);
  edtDescTanq.SetFocus;
end;

procedure TfrmPrincipal.spbExcluirClick(Sender: TObject);
begin
  DM.qryApoio.Close;
  DM.qryApoio.SQL.Clear;
  DM.qryApoio.SQL.Add('SELECT COUNT(ID_COMBUST) AS QTD FROM TANQUE WHERE ID_COMBUST ='+DM.qryCombustivelID_COMBUST.AsString);
  DM.qryApoio.Open;
  if DM.qryApoio.Fields.Fields[0].AsInteger > 0 then
  begin
     MessageDlg('Não é possível a exclusão de um Combustível vinculado a um Tanque.',TMsgDlgType.mtError,[TMsgDlgBtn.mbOk],0);
     Abort;
  end;

  //
  if MessageDlg('Confirma a exclusão ?',TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],0) <> mrYes then
      Abort;
  DM.qryCombustivel.Delete;
  AtivarDesativarComb(Sender);
end;

procedure TfrmPrincipal.spbExcluir_BbClick(Sender: TObject);
begin
  DM.qryApoio.Close;
  DM.qryApoio.SQL.Clear;
  DM.qryApoio.SQL.Add('SELECT COUNT(ID_BOMBA) AS QTD FROM MOVIMENTO WHERE ID_BOMBA ='+DM.qryBombaID_BOMBA.AsString);
  DM.qryApoio.Open;
  if DM.qryApoio.Fields.Fields[0].AsInteger > 0 then
  begin
     MessageDlg('Não é possível a exclusão de uma Bomba com Movimentos vinculados.',TMsgDlgType.mtError,[TMsgDlgBtn.mbOk],0);
     Abort;
  end;

  //
  if MessageDlg('Confirma a exclusão ?',TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],0) <> mrYes then
      Abort;
  DM.qryBomba.Delete;
  AtivarDesativarBb(Sender);
end;

procedure TfrmPrincipal.spbExcluir_MovClick(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão ?',TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],0) <> mrYes then
      Abort;
  DM.qryMovimento.Delete;
  AtivarDesativarMov(Sender);
end;

procedure TfrmPrincipal.spbExcluir_tqClick(Sender: TObject);
begin
  DM.qryApoio.Close;
  DM.qryApoio.SQL.Clear;
  DM.qryApoio.SQL.Add('SELECT COUNT(ID_TANQUE) AS QTD FROM BOMBA WHERE ID_TANQUE ='+DM.qryTanqueID_TANQUE.AsString);
  DM.qryApoio.Open;
  if DM.qryApoio.Fields.Fields[0].AsInteger > 0 then
  begin
     MessageDlg('Não é possível a exclusão de uma Tanque com Bombas vinculadas.',TMsgDlgType.mtError,[TMsgDlgBtn.mbOk],0);
     Abort;
  end;

  //
  if MessageDlg('Confirma a exclusão ?',TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],0) <> mrYes then
      Abort;
  DM.qryTanque.Delete;
  AtivarDesativarTq(Sender);
end;

procedure TfrmPrincipal.spbGravarClick(Sender: TObject);
var
  vVlr: Double;
begin
  edtDescComb.SetFocus;
  //
  if (DM.qryCombustivelVLR_LT_COMBUST.AsString = '') or (DM.qryCombustivelDESC_COMBUST.AsString = '') then
  begin
     MessageDlg('Valores inválidos ou em branco no preenchimento dos campos.'+#13+'Favor tentar novamente.',TMsgDlgType.mtError,[TMsgDlgBtn.mbOk],0);
     Abort;
  end;
  //
  if DM.qryCombustivel.State in [dsInsert] then
  begin
    vVlr := StrToFloat(edtVlrComb.Text);
    DM.qryCombustivelID_COMBUST.AsInteger := IncrementaCodigo('ID_COMBUST','COMBUSTIVEL');
    DM.qryCombustivelVLR_LT_COMBUST.AsFloat := vVlr;
  end;
  DM.qryCombustivel.Post;
  AtivarDesativarComb(Sender);
end;

procedure TfrmPrincipal.spbGravar_BbClick(Sender: TObject);
begin
  edtBomba.SetFocus;
  //
  if (DM.qryBombaDESC_BOMBA.AsString = '') or (DM.qryBombaID_TANQUE.AsString = '') then
  begin
     MessageDlg('Valores inválidos ou em branco no preenchimento dos campos.'+#13+'Favor tentar novamente.',TMsgDlgType.mtError,[TMsgDlgBtn.mbOk],0);
     Abort;
  end;
  //
  if DM.qryBomba.State in [dsInsert] then
    DM.qryBombaID_BOMBA.AsInteger := IncrementaCodigo('ID_BOMBA','BOMBA');
  DM.qryBomba.Post;
  AtivarDesativarBb(Sender);
end;

procedure TfrmPrincipal.spbGravar_tqClick(Sender: TObject);
begin
  edtDescTanq.SetFocus;
  //
  if (DM.qryTanqueDESC_TANQUE.AsString = '') or (DM.qryTanqueTNQ_CAPACIDADE.AsString = '') or (DM.qryTanqueID_COMBUST.AsString = '') then
  begin
     MessageDlg('Valores inválidos ou em branco no preenchimento dos campos.'+#13+'Favor tentar novamente.',TMsgDlgType.mtError,[TMsgDlgBtn.mbOk],0);
     Abort;
  end;
  //
  if DM.qryTanque.State in [dsInsert] then
    DM.qryTanqueID_TANQUE.AsInteger := IncrementaCodigo('ID_TANQUE','TANQUE');
  DM.qryTanque.Post;
  AtivarDesativarTq(Sender);
end;

procedure TfrmPrincipal.spbGrava_MovClick(Sender: TObject);
var
  vVlrG, vImpG, vLtrG: Double;
begin
  dedtDtMov.SetFocus;
  //
  if (DM.qryMovimentoDT_MOVIMENTO.AsString = '') or (DM.qryMovimentoID_BOMBA.AsString = '') or (DM.qryMovimentoQTD_LITROS.AsString = '') or (DM.qryMovimentoVLR_ABASTEC.AsString = '') then
  begin
     MessageDlg('Valores inválidos ou em branco no preenchimento dos campos.'+#13+'Favor tentar novamente.',TMsgDlgType.mtError,[TMsgDlgBtn.mbOk],0);
     Abort;
  end;
  //
  CalculaValores(Sender);
  //
  if DM.qryMovimento.State in [dsInsert] then
    DM.qryMovimentoID_MOVIMENTO.AsInteger := IncrementaCodigo('ID_MOVIMENTO','MOVIMENTO');
  DM.qryMovimento.Post;
  AtivarDesativarMov(Sender);
end;

procedure TfrmPrincipal.spbNovoClick(Sender: TObject);
begin
  DM.qryCombustivel.Append;
  //
  AtivarDesativarComb(Sender);
  edtDescComb.SetFocus;
end;

procedure TfrmPrincipal.spbNovo_BbClick(Sender: TObject);
begin
  AtualizaTabela(DM.qryTanque);
  //
  DM.qryBomba.Append;
  //
  AtivarDesativarBb(Sender);
  edtBomba.SetFocus;
end;

procedure TfrmPrincipal.spbNovo_MovClick(Sender: TObject);
begin
  AtualizaTabela(DM.qryBomba);
  //
  DM.qryMovimento.Append;
  //
  DM.qryMovimentoQTD_LITROS.AsFloat := StrToFloat('0,00');
  DM.qryMovimentoVLR_ABASTEC.AsFloat := StrToFloat('0,00');
  DM.qryMovimentoVLR_IMPOSTO.AsFloat := StrToFloat('0,00');
  DM.qryMovimentoVLR_TOTAL.AsFloat := StrToFloat('0,00');
  //
  AtivarDesativarMov(Sender);
  dedtDtMov.SetFocus;
end;

procedure TfrmPrincipal.spbNovo_tqClick(Sender: TObject);
begin
  AtualizaTabela(DM.qryCombustivel);
  //
  DM.qryTanque.Append;
  //
  AtivarDesativarTq(Sender);
  edtDescTanq.SetFocus;
end;

procedure TfrmPrincipal.spbReportClick(Sender: TObject);
var
  vRel: String;
begin
  //
  DM.qryApoio.Close;
  DM.qryApoio.SQL.Clear;
  DM.qryApoio.SQL.Add('UPDATE REPORT SET DATA_INI = '''+FormatDateTime('yyyy-mm-dd',dtEdtInicial.Date)+''', DATA_FIM = '''+FormatDateTime('yyyy-mm-dd',dtEdtFinal.Date)+''' ');
  DM.qryApoio.ExecSQL;
  DM.qryApoio.Close;

  {$IFNDEF MSWINDOWS}
     vRel := TPath.Combine(TPath.GetDocumentsPath, 'Report.exe');
     ShowMessage('Relatório só está disponível no MsWindows.');

  {$ELSE}
     vRel := 'C:\Users\Diassis\Documents\Embarcadero\Studio\Projects\Abastecimento\ReportVCL\Win32\Debug\Report.exe';
     //vRel := '..\..\Abastecimento\ReportVCL\Win32\Debug\Report.exe';
     ShellExecute(0, 'open', Pchar(vRel), Nil, Nil,SW_SHOWNORMAL);
     //WinExec(PChar(vRel),SW_NORMAL);
     //Windows.SetParent(FindWindow( nil, 'Relatório' ),Panel1.Handle) ;
  {$ENDIF MSWINDOWS}
end;

function TfrmPrincipal.IncrementaCodigo(vCampo, vTabela: String): Integer;
var
  cod: Integer;
begin
   cod := 0;
   DM.qryApoio.Close;
   DM.qryApoio.SQL.Clear;
   DM.qryApoio.SQL.Add('SELECT MAX('+vCampo+') FROM '+vTabela);
   DM.qryApoio.Open;
   cod := DM.qryApoio.Fields.Fields[0].AsInteger + 1;
   Result := cod;
end;

procedure TfrmPrincipal.CalculaValores(Sender: TObject);
var
  vVlr, vImp: Double;
  sCompNameEdt, sCompNameCmb : String;

begin
  //
  if Sender is Tedit then
    sCompNameEdt := (Sender as TEdit).Name;
  if Sender is TCombobox then
    sCompNameCmb := (Sender as TCombobox).Name;
  //
  DM.qryApoio.Close;
  DM.qryApoio.SQL.Clear;
  DM.qryApoio.SQL.Add('SELECT '+
      ' D.VLR_LT_COMBUST '+
      ' FROM BOMBA B '+
      ' INNER JOIN TANQUE C ON B.ID_TANQUE = C.ID_TANQUE '+
      ' INNER JOIN COMBUSTIVEL D ON C.ID_COMBUST = D.ID_COMBUST '+
      ' WHERE B.ID_BOMBA ='+IntToStr(DM.qryMovimentoID_BOMBA.AsInteger));
  DM.qryApoio.Open;

  if (sCompNameEdt = 'edtLitr') or (sCompNameCmb = 'cmbBomba') then
  begin
      //Calcula Campo Valor, se Litros for preenchido:
      if not (DM.qryMovimentoQTD_LITROS.AsString = '') then
      begin
        vVlr := StrToFloat(edtLitr.Text);
        DM.qryMovimentoVLR_ABASTEC.AsFloat := StrToFloat(FormatFloat('###,##0.00',vVlr * DM.qryApoio.Fields.Fields[0].AsFloat));
        DM.qryMovimentoQTD_LITROS.AsFloat := StrToFloat(FormatFloat('###,##0.00',vVlr));
      end
      else
        DM.qryMovimentoVLR_ABASTEC.AsFloat := StrToFloat('0,00');
  end
  else if (sCompNameEdt = 'edtValor') then
  begin
      //Calcula Campo Litros se Valor for preenchido:
      if not (DM.qryMovimentoVLR_ABASTEC.AsString = '') then
      begin
        vVlr := StrToFloat(edtValor.Text);
        DM.qryMovimentoQTD_LITROS.AsFloat := StrToFloat(FormatFloat('###,##0.00',vVlr / DM.qryApoio.Fields.Fields[0].AsFloat));
        DM.qryMovimentoVLR_ABASTEC.AsFloat := StrToFloat(FormatFloat('###,##0.00',vVlr));
      end
      else
        DM.qryMovimentoQTD_LITROS.AsFloat := StrToFloat('0,00');
  end;

  //Calcula Campo Imposto:
  if not (DM.qryMovimentoVLR_ABASTEC.AsString = '') then
  begin
    vVlr := StrToFloat(edtValor.Text);
    vImp := vVlr * (13/100);
    DM.qryMovimentoVLR_IMPOSTO.AsFloat := StrToFloat(FormatFloat('###,##0.00',vImp));
  end
  else
    DM.qryMovimentoVLR_IMPOSTO.AsFloat := StrToFloat('0,00');
  //
end;

end.
