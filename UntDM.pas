unit UntDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    FDConexao: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    qryTanque: TFDQuery;
    qryCombustivel: TFDQuery;
    qryBomba: TFDQuery;
    qryMovimento: TFDQuery;
    qryTanqueID_TANQUE: TSmallintField;
    qryTanqueTNQ_CAPACIDADE: TIntegerField;
    qryTanqueID_COMBUST: TSmallintField;
    qryCombustivelID_COMBUST: TSmallintField;
    qryCombustivelDESC_COMBUST: TStringField;
    qryCombustivelVLR_LT_COMBUST: TFloatField;
    qryBombaID_BOMBA: TSmallintField;
    qryBombaDESC_BOMBA: TStringField;
    qryBombaID_TANQUE: TSmallintField;
    qryMovimentoID_MOVIMENTO: TIntegerField;
    qryMovimentoDT_MOVIMENTO: TDateField;
    qryMovimentoID_BOMBA: TSmallintField;
    qryMovimentoQTD_LITROS: TFloatField;
    qryMovimentoVLR_ABASTEC: TFloatField;
    qryMovimentoVLR_IMPOSTO: TFloatField;
    qryMovimentoVLR_TOTAL: TFloatField;
    qryTanqueCOMBUSTIVEL: TStringField;
    qryBombaCAPACIDADE: TIntegerField;
    qryTanqueDESC_TANQUE: TStringField;
    qryBombaDESCR_TANQUE: TStringField;
    qryMovimentoBOMBA: TStringField;
    qryApoio: TFDQuery;
    qryVlrUntBomb: TFDQuery;
    qryVlrUntBombID_BOMBA: TSmallintField;
    qryVlrUntBombDESC_BOMBA: TStringField;
    qryVlrUntBombID_TANQUE: TSmallintField;
    qryVlrUntBombVLR_LT_COMBUST: TFloatField;
    qryMovimentoVALOR_UNIT: TFloatField;
    qryVlrUntBombDESC_COMBUST: TStringField;
    qryMovimentoCOMBUSTIVEL: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  with fdConexao do
  begin
    {$IFNDEF MSWINDOWS}
      Params.Values['DriverID'] := 'SQLite';
      try
        Params.Values['Database'] := TPath.Combine(TPath.GetDocumentsPath, 'Abastecimento.db3');
        Connected := True;
      except on E: Exception do
        begin
          raise Exception.Create('Erro de conexão com o banco de dados!');
        end;
      end;
    {$ELSE}
      try
        Params.Values['Database'] := 'C:\Users\Diassis\Documents\Embarcadero\Studio\Projects\Abastecimento\database\Abastecimento.db3';
        Connected := True;
      except on E: Exception do
        raise Exception.Create('Erro de conexão com o banco de dados!');
      end;
    {$ENDIF}
  end;

  qryVlrUntBomb.Active := True;
  //
  qryCombustivel.Active := True;
  qryTanque.Active := True;
  qryBomba.Active := True;
  qrymovimento.Active := True;
end;

end.
