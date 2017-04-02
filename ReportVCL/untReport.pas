unit untReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, Vcl.Buttons, Vcl.ExtCtrls, RLReport,
  Vcl.ComCtrls;

type
  TfrmReport = class(TForm)
    pgcrtReport: TPageControl;
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    FooterReport: TRLBand;
    HeaderReport: TRLBand;
    rlGrupo: TRLGroup;
    rldbDbDetalhe: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    HeaderGrupo: TRLBand;
    FooterGrupo: TRLBand;
    Detalhe: TRLBand;
    rlLabGrupo: TRLLabel;
    rldbDbGrupo: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel8: TRLLabel;
    rlLabDetalhe: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    rlLabGrupTanq: TRLLabel;
    rlDbGrupTanq: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel17: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText9: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText10: TRLDBText;
    rlLabTipoGrupo: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReport: TfrmReport;

implementation

{$R *.dfm}

uses untDMReport;

end.
