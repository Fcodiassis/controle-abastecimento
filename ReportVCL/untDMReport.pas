unit untDMReport;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLRichFilter, RLXLSFilter,
  RLFilters, RLPDFFilter;

type
  TDMReport = class(TDataModule)
    fdConexao: TFDConnection;
    qryReport: TFDQuery;
    qryReportID_MOVIMENTO: TIntegerField;
    qryReportDT_MOVIMENTO: TDateField;
    qryReportDESC_TANQUE: TStringField;
    qryReportDESC_BOMBA: TStringField;
    qryReportDESC_COMBUST: TStringField;
    qryReportQTD_LITROS: TFloatField;
    qryReportVLR_ABASTEC: TFloatField;
    qryReportVLR_IMPOSTO: TFloatField;
    dsReport: TDataSource;
    qryReportDATA_FIM: TDateField;
    qryReportDATA_INI: TDateField;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLRichFilter1: TRLRichFilter;
    qryReportANO_MES: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMReport: TDMReport;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMReport.DataModuleCreate(Sender: TObject);
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

  qryReport.Active := True;

end;

end.
