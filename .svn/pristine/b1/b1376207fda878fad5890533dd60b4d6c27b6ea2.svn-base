unit view.tdi.lista.Fabricantes;

interface

uses
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  JvExMask,
  JvToolEdit,
  ToolCtrlsEh,
  acPNG,

  Data.DB,

  System.Actions,
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.ActnList,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.tdi.base.listas;

type
  TViewListaFabricantesTDI = class(TViewBaseListasTDI)
    procedure edtPesquisaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaFabricantesTDI: TViewListaFabricantesTDI;

implementation

uses
  view.modal.cadastro.Fabricantes,
  view.telaFundo;

{$R *.dfm}

procedure TViewListaFabricantesTDI.btnEditarClick(Sender: TObject);
  var
  TelaFundo: TViewTelaFundo;
begin
  inherited;

  ViewCadastroFrabricantes := TViewCadastroFrabricantes.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroFrabricantes.IdPesquisa := FService.Qry_FabricantesIDFABRICANTE.AsInteger;
    ViewCadastroFrabricantes.Operacao   := 'Editar';
    ViewCadastroFrabricantes.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroFrabricantes);

    FService.GET_Fabricantes(0);

  end;
end;

procedure TViewListaFabricantesTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin
  inherited;

  ViewCadastroFrabricantes := TViewCadastroFrabricantes.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroFrabricantes.Operacao   := 'Inserir';
    ViewCadastroFrabricantes.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroFrabricantes);

    FService.GET_Fabricantes(0);

  end;
end;

procedure TViewListaFabricantesTDI.edtPesquisaChange(Sender: TObject);
begin
  inherited;
  GRIDDados.SearchPanel.SearchingText := '';
  if Length(edtPesquisa.Text) > 0 then
    GRIDDados.SearchPanel.SearchingText := Trim(edtPesquisa.Text);
end;

procedure TViewListaFabricantesTDI.FormCreate(Sender: TObject);
begin
  inherited;
  ViewListaFabricantesTDI := Self;
  DS_Dados.DataSet     := FService.QRY_Fabricantes;
end;

procedure TViewListaFabricantesTDI.FormShow(Sender: TObject);
begin
  inherited;
  FService.GET_Fabricantes(0);
end;

end.
