unit view.modal.pesquisa.cidades;

interface

uses
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  ToolCtrlsEh,
  acPNG,

  Data.DB,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  view.modal.base.pesquisa;

type
  TViewPesquisaCidades = class(TViewBasePesquisa)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPesquisaCidades: TViewPesquisaCidades;

implementation

{$R *.dfm}

procedure TViewPesquisaCidades.FormShow(Sender: TObject);
begin // show
  inherited;
  DS_Dados.DataSet := FService.QRY_Cidades;
  FService.QRY_Cidades.Close;
  FService.QRY_Cidades.Open;
end;

end.
