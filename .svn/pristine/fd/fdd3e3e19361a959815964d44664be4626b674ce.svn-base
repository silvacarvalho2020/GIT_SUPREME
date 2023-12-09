unit view.tdi.lista.clientes;

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

  view.modal.cadastro.clientes,
  view.tdi.base.listas,
  view.telaFundo,
  providers.conversao;

type
  TViewListaClientesTDI = class(TViewBaseListasTDI)
    pnlDadosAgregados: TPanel;
    pnlDadosContatos: TPanel;
    pnlTitContatos: TPanel;
    pnlDadosEndereco: TPanel;
    pnlTitEndereco: TPanel;
    DBG_DadosContatos: TDBGridEh;
    lblTitContatos: TLabel;
    lblTitListEnderecos: TLabel;
    DS_Contatos: TDataSource;
    DBG_DadosEndereco: TDBGridEh;
    DS_Enderecos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgPesquisaAzulClaroClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure DS_DadosDataChange(Sender: TObject; Field: TField);
    procedure BtnNovoClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewListaClientesTDI: TViewListaClientesTDI;

implementation

{$R *.dfm}

procedure TViewListaClientesTDI.BtnEditarClick(Sender: TObject);
begin //editar
  inherited;

  MostrarFormularioModal<TViewCadastroClientes>(ViewCadastroClientes, AcaoDataSetToStr(tpEditar), FService.QRY_PessoasIDPESSOAS.AsInteger);
  FService.GET_Pessoas;

end;

procedure TViewListaClientesTDI.BtnNovoClick(Sender: TObject);
begin //novo
  inherited;

  MostrarFormularioModal<TViewCadastroClientes>(ViewCadastroClientes, AcaoDataSetToStr(tpIncluir));
  FService.GET_Pessoas;

end;

procedure TViewListaClientesTDI.DS_DadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  FService.GET_Contato(FService.QRY_PessoasIDPESSOAS.AsInteger);
  FService.GET_Endereco(FService.QRY_PessoasIDPESSOAS.AsInteger);
end;

procedure TViewListaClientesTDI.edtPesquisaChange(Sender: TObject);
begin // pesquisa de clientes
  inherited;
  GRIDDados.SearchPanel.SearchingText := '';
  if Length(edtPesquisa.Text) > 0 then
    GRIDDados.SearchPanel.SearchingText := Trim(edtPesquisa.Text);
end;

procedure TViewListaClientesTDI.FormCreate(Sender: TObject);
begin // create
  inherited;
  ViewListaClientesTDI := Self;
  DS_Dados.DataSet     := FService.QRY_Pessoas;
  DS_Contatos.DataSet  := FService.QRY_Pessoas_Contato;
  DS_Enderecos.DataSet := FService.QRY_Pessoas_Endereco;
end;

procedure TViewListaClientesTDI.FormShow(Sender: TObject);
begin // show
  inherited;
  FService.GET_Pessoas;
end;

procedure TViewListaClientesTDI.imgPesquisaAzulClaroClick(Sender: TObject);
begin
  inherited;
  FService.GET_Pessoas;
end;

end.
