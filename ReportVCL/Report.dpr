program Report;

uses
  Vcl.Forms,
  untReport in 'untReport.pas' {frmReport},
  untDMReport in 'untDMReport.pas' {DMReport: TDataModule},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untGrafico in 'untGrafico.pas' {frmGrafico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDMReport, DMReport);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmReport, frmReport);
  Application.CreateForm(TfrmGrafico, frmGrafico);
  Application.Run;
end.
