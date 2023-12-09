unit view.modal.cadastro.Fornecedores;
interface
uses
  AdvCombo,
  AdvDBComboBox,
  JvDBControls,
  JvExMask,
  JvMaskEdit,
  JvToolEdit,
  UFormat,
  UFuncoes,

  Data.DB,

  System.Classes,
  System.JSON,
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
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.modal.base.cadastro,
  view.modal.pesquisa.cidades,
  view.telaFundo;
type
  TViewCadastroFornecedores = class(TViewBaseCadastro)
    pnlDadosCadastro: TPanel;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbxFisicaJuridica: TAdvDBComboBox;
    EdtRG: TDBEdit;
    EdtCPFCNPJ: TJvDBMaskEdit;
    EdtCep: TJvDBMaskEdit;
    EdtRazao: TDBEdit;
    EdtFantasia: TDBEdit;
    EdtEndereco: TDBEdit;
    EdtBairro: TDBEdit;
    EdtNumero: TDBEdit;
    EdtCelular: TDBEdit;
    EdtUF: TDBEdit;
    EdtTelefone: TDBEdit;
    EdtContato: TDBEdit;
    EdtObs: TDBEdit;
    EdtContador: TDBEdit;
    EdtCpfContador: TDBEdit;
    EdtEmail: TDBEdit;
    EdtCodigo: TDBEdit;
    edtCidade: TDBEdit;
    pnlBtnPesquisaGenerica: TPanel;
    btnPesquisaGenerica: TSpeedButton;
    cbxTipoInscricao: TAdvDBComboBox;
    cbxAtivo: TAdvDBComboBox;
    lblAtivo: TLabel;
    procedure cbxFisicaJuridicaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisaGenericaClick(Sender: TObject);
    procedure edtCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure CorAbas(Sender: TObject; ATab: TCard);
    procedure PintarOutrosBotoesEPaineis(BotaoSelecionado: TSpeedButton;
      PainelSelecionado: TPanel);
    { Private declarations }
  public
    var
      KeyPrecionada: Char;
  end;
var
  ViewCadastroFornecedores: TViewCadastroFornecedores;
implementation
{$R *.dfm}

procedure TViewCadastroFornecedores.btnSalvarClick(Sender: TObject);
begin  // salvar
  inherited;
  if VerificaCampos then
  begin
    FService.QRY_Pessoas.Edit;
    FService.QRY_PessoasIDTIPOPESSOA.AsInteger := 2;
    FService.QRY_Pessoas.Post;
    fnc_CriarMensagem('CADASTRO DE FORNECEDOR', 'CONFIRMANDO DADOS',
            'FORNECEDOR CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
    Self.Close;
  end;
end;
procedure TViewCadastroFornecedores.btnPesquisaGenericaClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin // Cidades
  inherited;
  ViewPesquisaCidades := TViewPesquisaCidades.Create(Self);
  try
    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewPesquisaCidades.edtPesquisa.Text := KeyPrecionada;
    ViewPesquisaCidades.ShowModal;
    if ViewPesquisaCidades.ModalResult = mrOk then
    begin
      FService.QRY_Pessoas.Edit;
      FService.QRY_PessoasIDCIDADE.AsInteger  := ViewPesquisaCidades.FService.QRY_CidadesIDCIDADE.AsInteger;
      FService.QRY_PessoasNOMECIDADE.AsString := ViewPesquisaCidades.FService.QRY_CidadesMUNICIPIO.AsString;
      FService.QRY_PessoasUF.AsString         := ViewPesquisaCidades.FService.QRY_CidadesUF.AsString;
    end;

  finally
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewPesquisaCidades);
  end;
end;
Procedure TViewCadastroFornecedores.cbxFisicaJuridicaChange(Sender: TObject);
begin
  inherited;
  EdtCPFCNPJ.EditMask := '99.999.999/9999-99';
  if cbxFisicaJuridica.ItemIndex = 0 then
    EdtCPFCNPJ.EditMask := '999.999.999-99';
end;
procedure TViewCadastroFornecedores.CorAbas(Sender: TObject; ATab: TCard);
begin
end;

procedure TViewCadastroFornecedores.edtCidadeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  KeyPrecionada := Key;
  if IsCharAlpha(Char(Key)) then
    btnPesquisaGenerica.Click;
end;

procedure TViewCadastroFornecedores.PintarOutrosBotoesEPaineis(
  BotaoSelecionado: TSpeedButton; PainelSelecionado: TPanel);
begin
end;
procedure TViewCadastroFornecedores.FormCreate(Sender: TObject);
begin
  inherited;
  DS_Cadastro.DataSet := FService.QRY_Pessoas;
end;
procedure TViewCadastroFornecedores.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = VK_F10 then
    btnSalvar.Click;
end;

procedure TViewCadastroFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  if Operacao = 'Inserir' then
  begin
    FService.QRY_Pessoas.Open();
    FService.QRY_Pessoas.Insert;
    FService.QRY_PessoasATIVO.AsString         := 'ATIVO';
    FService.QRY_PessoasCONTRIBUINTE.AsInteger := 2;
    EdtRazao.SetFocus;
  end;
  if Operacao = 'Editar' then
  begin
    FService.GET_Pessoas(IdPesquisa);
    FService.QRY_Pessoas.Edit;
    FService.GET_Cidades(FService.QRY_PessoasIDCIDADE.AsInteger);
    EdtRazao.SetFocus;
  end;
end;
end.
