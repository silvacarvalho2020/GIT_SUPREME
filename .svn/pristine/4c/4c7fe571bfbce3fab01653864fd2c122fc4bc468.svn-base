unit view.modal.contabilista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, view.modal.base.pesquisa,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TViewPesquisaContabilista = class(TViewBasePesquisa)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPesquisaContabilista: TViewPesquisaContabilista;

implementation

{$R *.dfm}

uses service.cadastro;

procedure TViewPesquisaContabilista.FormShow(Sender: TObject);
begin
  inherited;
 DS_Dados.DataSet  := FService.QRY_Pessoas;
 FService.GET_Pessoas(0);
end;

end.
