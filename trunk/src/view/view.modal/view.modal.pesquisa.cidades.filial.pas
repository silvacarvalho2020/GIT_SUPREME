unit view.modal.pesquisa.cidades.filial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.pesquisa.cidades, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls, Vcl.Buttons;

type
  TViewPesquisaCidadesFilial = class(TViewPesquisaCidades)
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPesquisaCidadesFilial: TViewPesquisaCidadesFilial;

implementation

{$R *.dfm}

uses view.modal.cadastro.filial, service.cadastro;

procedure TViewPesquisaCidadesFilial.BtnCancelarClick(Sender: TObject);
begin
  inherited;
close;
end;

procedure TViewPesquisaCidadesFilial.FormShow(Sender: TObject);
begin
  inherited;
  DS_Dados.DataSet := FService.QRY_Cidades;
  FService.GET_Cidades(0);
end;

end.
