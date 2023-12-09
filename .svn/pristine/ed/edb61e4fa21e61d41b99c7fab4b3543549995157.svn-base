unit view.modal.cadastro.enderecos;

interface

uses
  AdvCombo,
  AdvDBComboBox,
  UFuncoes,

  Data.DB,

  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBCtrls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Mask,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows,

  view.modal.base.cadastro,
  view.modal.pesquisa.cidades,
  view.telaFundo;

type
  TViewCadastroEnderecos = class(TViewBaseCadastro)
    lblEndereco: TLabel;
    edtEndereco: TDBEdit;
    lblBairro: TLabel;
    edtBairro: TDBEdit;
    lblCEP: TLabel;
    edtCEP: TDBEdit;
    lblNumro: TLabel;
    edtNumero: TDBEdit;
    lblCidade: TLabel;
    edtCidade: TDBEdit;
    lblUF: TLabel;
    edtUF: TDBEdit;
    cbxTipoInscricao: TAdvDBComboBox;
    lblTipoEndereco: TLabel;
    pnlBtnPesquisaGenerica: TPanel;
    btnPesquisaGenerica: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnPesquisaGenericaClick(Sender: TObject);
  private
    FIdPessoa: integer;
  public
    property IdPessoa: integer read FIdPessoa write FIdPessoa;
  end;

var
  ViewCadastroEnderecos: TViewCadastroEnderecos;

implementation

{$R *.dfm}

procedure TViewCadastroEnderecos.btnPesquisaGenericaClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin // Cidades
  inherited;
  ViewPesquisaCidades := TViewPesquisaCidades.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewPesquisaCidades.ShowModal;

    if ViewPesquisaCidades.ModalResult = mrOk then
    begin
      FService.QRY_Pessoas_Endereco.Edit;
      FService.QRY_Pessoas_EnderecoIDCIDADE.AsInteger  := ViewPesquisaCidades.FService.QRY_CidadesIDCIDADE.AsInteger;
      FService.QRY_Pessoas_EnderecoNOMECIDADE.AsString := ViewPesquisaCidades.FService.QRY_CidadesMUNICIPIO.AsString;
      FService.QRY_Pessoas_EnderecoUF.AsString         := ViewPesquisaCidades.FService.QRY_CidadesUF.AsString;
    end;


  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewPesquisaCidades);
  end;
end;

procedure TViewCadastroEnderecos.btnSalvarClick(Sender: TObject);
begin //SALVAR
  inherited;
  FService.QRY_Pessoas_Endereco.Edit;
  FService.QRY_Pessoas_EnderecoIDPESSOA.AsInteger := FIdPessoa;
  FService.QRY_Pessoas_Endereco.Post;
  fnc_CriarMensagem('CADASTRO DE ENDEREÇOS', 'CONFIRMANDO DADOS',
          'ENDEREÇO CADASTRADO COM SUCESSO!',
          ExtractFilepath(Application.ExeName) +
          '\Icones\Confirmacao.png', 'OK');

  Self.Close;

end;

procedure TViewCadastroEnderecos.FormCreate(Sender: TObject);
begin // create
  inherited;
  DS_Cadastro.DataSet := FService.QRY_Pessoas_Endereco;
end;

procedure TViewCadastroEnderecos.FormShow(Sender: TObject);
begin //show
  inherited;
  if Operacao = 'Inserir' then
  begin
    FService.QRY_Pessoas_Endereco.Open();
    FService.QRY_Pessoas_Endereco.Insert;
  end;

  if Operacao = 'Editar' then
  begin
    FService.GET_Endereco(IdPesquisa);
    FService.QRY_Pessoas_Endereco.Edit;
  end;

end;

end.
