unit view.tdi.lista.fornecedores;

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

  view.modal.cadastro.Fornecedores,
  view.tdi.base.listas,
  view.telaFundo;

type
  TViewListaFornecedoresTDI = class(TViewBaseListasTDI)
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
  ViewListaFornecedoresTDI: TViewListaFornecedoresTDI;

implementation


{$R *.dfm}

procedure TViewListaFornecedoresTDI.btnEditarClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin // Editar
  inherited;

  ViewCadastroFornecedores := TViewCadastroFornecedores.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroFornecedores.IdPesquisa := FService.QRY_PessoasIDPESSOAS.AsInteger;
    ViewCadastroFornecedores.Operacao   := 'Editar';
    ViewCadastroFornecedores.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroFornecedores);

    FService.GET_Pessoas('',2);

  end;

end;

procedure TViewListaFornecedoresTDI.btnNovoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin //novo
  inherited;

  ViewCadastroFornecedores := TViewCadastroFornecedores.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;

    ViewCadastroFornecedores.Operacao   := 'Inserir';
    ViewCadastroFornecedores.ShowModal;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroFornecedores);

    FService.GET_Pessoas('',2);

  end;

end;

procedure TViewListaFornecedoresTDI.FormCreate(Sender: TObject);
begin // create
  inherited;
  ViewListaFornecedoresTDI := Self;
  DS_Dados.DataSet := FService.QRY_Pessoas;
end;

procedure TViewListaFornecedoresTDI.FormShow(Sender: TObject);
begin // show
  inherited;
  FService.GET_Pessoas('',2);
end;

end.
