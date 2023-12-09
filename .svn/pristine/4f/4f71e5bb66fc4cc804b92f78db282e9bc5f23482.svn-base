unit view.modal.gerentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.pesquisa,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TViewPesquisaGerentes = class(TViewBasePesquisa)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPesquisaGerentes: TViewPesquisaGerentes;

implementation

{$R *.dfm}

uses service.cadastro;

procedure TViewPesquisaGerentes.FormShow(Sender: TObject);
begin
  inherited;
    DS_Dados.DataSet  := FService.QRY_Usuarios;
    FService.GET_Usuarios(0);
end;

end.
