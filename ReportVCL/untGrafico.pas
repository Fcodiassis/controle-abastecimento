unit untGrafico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Data.DB,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart, VCLTee.TeeDBCrossTab;

type
  TfrmGrafico = class(TForm)
    DBChart1: TDBChart;
    Series1: TBarSeries;
    DBCrossTabSource1: TDBCrossTabSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrafico: TfrmGrafico;

implementation

{$R *.dfm}

uses untDMReport, untPrincipal;

end.
