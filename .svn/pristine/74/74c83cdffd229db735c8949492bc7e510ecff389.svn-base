unit view.modal.pesquisa.pessoas;

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
  TViewPesquisaPessoas = class(TViewBasePesquisa)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPesquisaPessoas: TViewPesquisaPessoas;

implementation

{$R *.dfm}

procedure TViewPesquisaPessoas.FormShow(Sender: TObject);
begin // show
  inherited;
  DS_Dados.DataSet := FService.QRY_Pessoas;
  FService.GET_Pessoas(0);
end;

end.
