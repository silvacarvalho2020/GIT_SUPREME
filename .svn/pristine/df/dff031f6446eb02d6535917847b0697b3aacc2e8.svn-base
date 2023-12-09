unit view.modal.cadastro.clientes;

interface

uses
  AdvCombo,
  AdvDBComboBox,
  DBAxisGridsEh,
  DBGridEh,
  DBGridEhGrouping,
  DBGridEhToolCtrls,
  DynVarsEh,
  EhLibVCL,
  GridsEh,
  Jsons,
  JvDBControls,
  JvExMask,
  JvMaskEdit,
  JvToolEdit,
  ToolCtrlsEh,
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
  Vcl.WinXCtrls,
  Vcl.WinXPanels,

  Winapi.Messages,
  Winapi.Windows,

  view.modal.base.cadastro,
  view.modal.cadastro.contatos,
  view.modal.cadastro.enderecos,
  view.modal.cadastro.grupos.clientes,
  view.modal.pesquisa.cidades,
  view.telaFundo, providers.conversao;

type
  TViewCadastroClientes = class(TViewBaseCadastro)
    pnlDadosCadastro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LbFantasia: TLabel;
    Label5: TLabel;
    LBCPFCNPJ: TLabel;
    LBRgIncEstadual: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    EdtRazao: TDBEdit;
    EdtFantasia: TDBEdit;
    EdtRG: TDBEdit;
    EdtInsMun: TDBEdit;
    EdtInsSuframa: TDBEdit;
    EdtEndereco: TDBEdit;
    EdtBairro: TDBEdit;
    EdtNumero: TDBEdit;
    EdtComplemento: TDBEdit;
    EdtCodigo: TDBEdit;
    pnlAbas: TPanel;
    PnBtnFinanceiro: TPanel;
    BtnFinanceiro: TSpeedButton;
    PnBtnObs: TPanel;
    BtnObservacao: TSpeedButton;
    PnBtnContatos: TPanel;
    BtnContatos: TSpeedButton;
    PnBtnReferencia: TPanel;
    BtnReferencia: TSpeedButton;
    PnBtnEnderecos: TPanel;
    btnEnderecos: TSpeedButton;
    CP_Clientes: TCardPanel;
    Card_Financeiro: TCard;
    Card_Enderecos: TCard;
    Card_Contatos: TCard;
    Card_Referencias: TCard;
    Card_Observacoes: TCard;
    lblObservacao: TLabel;
    mmoObservacao: TDBMemo;
    cbxFisicaJuridica: TAdvDBComboBox;
    cbxAtivo: TAdvDBComboBox;
    lblAtivoInativo: TLabel;
    cbxTipoInscricao: TAdvDBComboBox;
    EdtUF: TDBEdit;
    edtCidade: TDBEdit;
    pnlTopoEnderecos: TPanel;
    DBG_Enderecos: TDBGridEh;
    DS_Endereco: TDataSource;
    pnlBtnNovoEndereco: TPanel;
    btnNovoEndereco: TSpeedButton;
    pnlEditarEndereco: TPanel;
    btnEditarEndereco: TSpeedButton;
    pnlLineTopoEnderecos: TPanel;
    pnlBtnPesquisaGenerica: TPanel;
    btnPesquisaGenerica: TSpeedButton;
    gbxPessoal: TGroupBox;
    gbxFinanceira: TGroupBox;
    gbxComercial: TGroupBox;
    pnlLineTopoReferencias: TPanel;
    lblGrupoClientes: TLabel;
    cbxGrupoCliente: TAdvDBComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    edtDtaNascimento: TJvDBDateEdit;
    Label23: TLabel;
    pnlBotoesContatos: TPanel;
    pnlBtnNovoContato: TPanel;
    btnNovoContato: TSpeedButton;
    pnlEditarContato: TPanel;
    btnEditarContato: TSpeedButton;
    pnlLineTopoBotoesCotato: TPanel;
    DBG_Contatos: TDBGridEh;
    btnPLUS: TSpeedButton;
    DS_Contatos: TDataSource;
    EdtCPFCNPJ: TJvDBMaskEdit;
    EdtCep: TJvDBMaskEdit;
    Label24: TLabel;
    AdvDBComboBox1: TAdvDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnFinanceiroClick(Sender: TObject);
    procedure btnEnderecosClick(Sender: TObject);
    procedure BtnContatosClick(Sender: TObject);
    procedure BtnReferenciaClick(Sender: TObject);
    procedure BtnObservacaoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoEnderecoClick(Sender: TObject);
    procedure btnEditarEnderecoClick(Sender: TObject);
    procedure btnPesquisaGenericaClick(Sender: TObject);
    procedure EdtCPFCNPJChange(Sender: TObject);
    procedure EdtCPFCNPJExit(Sender: TObject);
    procedure btnPLUSClick(Sender: TObject);
    procedure btnNovoContatoClick(Sender: TObject);
    procedure btnEditarContatoClick(Sender: TObject);
    procedure cbxFisicaJuridicaChange(Sender: TObject);
  private
    procedure PintarOutrosBotoesEPaineis(BotaoSelecionado: TSpeedButton; PainelSelecionado: TPanel);
    procedure CorAbas(Sender: TObject; ATab: TCard);
    procedure GET_PessoaJuridica;
    procedure GET_TipoCliente;
  public
    { Public declarations }
  end;

var
  ViewCadastroClientes: TViewCadastroClientes;

implementation

{$R *.dfm}

procedure TViewCadastroClientes.btnPLUSClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin // novos grupos de clientes
  inherited;
  ViewGrupoClientesCadastro := TViewGrupoClientesCadastro.Create(Self);
  try
    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewGrupoClientesCadastro.ShowModal;
  finally

    //Carrega novamente a lista
    ViewGrupoClientesCadastro.FService.QRY_Pessoas_GruposTIPOGRUPO.AsString;

    if ViewGrupoClientesCadastro.ModalResult = mrOk then
      GET_TipoCliente;

    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewGrupoClientesCadastro);
  end;
end;

procedure TViewCadastroClientes.BtnContatosClick(Sender: TObject);
begin //Contatos
  inherited;
  CorAbas(Sender, Card_Contatos);
end;

procedure TViewCadastroClientes.btnEditarContatoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin //editar contatos
  inherited;
  ViewCadastroContatos := TViewCadastroContatos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroContatos.Operacao   := 'Editar';
    ViewCadastroContatos.IdPesquisa := FService.QRY_Pessoas_EnderecoIDENDERECO.AsInteger;
    ViewCadastroContatos.IdPessoa   := FService.QRY_PessoasIDPESSOAS.AsInteger;
    ViewCadastroContatos.ShowModal;

  finally
    FService.GET_Contato(FService.QRY_PessoasIDPESSOAS.AsInteger);
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroContatos);
  end;
end;

procedure TViewCadastroClientes.btnEditarEnderecoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin //editar endereço
  inherited;
  ViewCadastroEnderecos := TViewCadastroEnderecos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroEnderecos.Operacao   := 'Editar';
    ViewCadastroEnderecos.IdPesquisa := FService.QRY_Pessoas_EnderecoIDENDERECO.AsInteger;
    ViewCadastroEnderecos.IdPessoa   := FService.QRY_PessoasIDPESSOAS.AsInteger;
    ViewCadastroEnderecos.ShowModal;

  finally
    FService.GET_Endereco(FService.QRY_PessoasIDPESSOAS.AsInteger);
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroEnderecos);
  end;
end;

procedure TViewCadastroClientes.btnNovoContatoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin //novo contato
  inherited;

  if DS_Cadastro.DataSet.State = dsInsert then
    DS_Cadastro.DataSet.Post;

  ViewCadastroContatos := TViewCadastroContatos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroContatos.Operacao   := 'Inserir';
    ViewCadastroContatos.IdPessoa   := FService.QRY_PessoasIDPESSOAS.AsInteger;
    ViewCadastroContatos.ShowModal;

  finally
    FService.GET_Contato(FService.QRY_PessoasIDPESSOAS.AsInteger);
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroContatos);
  end;
end;

procedure TViewCadastroClientes.btnNovoEnderecoClick(Sender: TObject);
var
  TelaFundo: TViewTelaFundo;
begin //novo endereço
  inherited;

  if DS_Cadastro.DataSet.State = dsInsert then
    DS_Cadastro.DataSet.Post;

  ViewCadastroEnderecos := TViewCadastroEnderecos.Create(Self);
  try

    TelaFundo := TViewTelaFundo.Create(Self);
    TelaFundo.Show;
    ViewCadastroEnderecos.Operacao   := 'Inserir';
    ViewCadastroEnderecos.IdPessoa   := FService.QRY_PessoasIDPESSOAS.AsInteger;
    ViewCadastroEnderecos.ShowModal;

  finally
    FService.GET_Endereco(FService.QRY_PessoasIDPESSOAS.AsInteger);
    TelaFundo.Hide;
    FreeAndNil(TelaFundo);
    FreeAndNil(ViewCadastroEnderecos);
  end;
end;

procedure TViewCadastroClientes.btnEnderecosClick(Sender: TObject);
begin //Entrega
  inherited;
  CorAbas(Sender, Card_Enderecos);
end;

procedure TViewCadastroClientes.BtnObservacaoClick(Sender: TObject);
begin //Observações
  inherited;
  CorAbas(Sender, Card_Observacoes);
end;

procedure TViewCadastroClientes.btnPesquisaGenericaClick(Sender: TObject);
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

procedure TViewCadastroClientes.BtnReferenciaClick(Sender: TObject);
begin //Referencias
  inherited;
  CorAbas(Sender, Card_Referencias);
end;

procedure TViewCadastroClientes.btnSalvarClick(Sender: TObject);
begin // salvar
  inherited;
  if VerificaCampos then
  begin
    FService.QRY_Pessoas.Edit;
    FService.QRY_Pessoas.Post;
    fnc_CriarMensagem('CADASTRO DE CLIENTES', 'CONFIRMANDO DADOS',
            'CLIENTE CADASTRADO COM SUCESSO!',
            ExtractFilepath(Application.ExeName) +
            '\Icones\Confirmacao.png', 'OK');
  end
  else begin
    Abort;
  end;
end;

procedure TViewCadastroClientes.cbxFisicaJuridicaChange(Sender: TObject);
begin
  inherited;
  EdtCPFCNPJ.EditMask := '99.999.999/9999-99';
  if cbxFisicaJuridica.ItemIndex = 0 then
    EdtCPFCNPJ.EditMask := '999.999.999-99';
end;

procedure TViewCadastroClientes.BtnFinanceiroClick(Sender: TObject);
begin //vendas
  inherited;
  CorAbas(Sender, Card_Financeiro);
end;

procedure TViewCadastroClientes.CorAbas(Sender: TObject; ATab: TCard);
var
  Painel: TPanel;
  Botao: TSpeedButton;
begin

  if Sender is TSpeedButton then
  begin
    Botao  := TSpeedButton(Sender);
    Painel := TPanel(Botao.Parent);

    // Pinta o painel e o botão correspondente
    Painel.Color     := $00745A0C;
    Botao.Font.Color := clWhite;

    // Despinta os demais paineis e botões
    PintarOutrosBotoesEPaineis(Botao, Painel);

  end;

  // Muda de Aba
  CP_Clientes.ActiveCard := ATab;

end;

procedure TViewCadastroClientes.EdtCPFCNPJChange(Sender: TObject);
begin //Change
  inherited;
//  Formatar(EdtCPFCNPJ, TFormato.CNPJorCPF);
end;

procedure TViewCadastroClientes.EdtCPFCNPJExit(Sender: TObject);
begin
  inherited;
  if cbxFisicaJuridica.ItemIndex = 1 then
  begin
    GET_PessoaJuridica;
  end;
end;

procedure TViewCadastroClientes.GET_PessoaJuridica;
var
  JSON: String;
  objDados, objDados2: TJsonObject;
  JsValue: TJsonValue;

  arrayDados, arrayAtividadeP, arrayAtividadeS: TJSONArray;
  a, i, x, y: integer;
begin
//  if EdtCPFCNPJ.text = '' then
//  begin
//    abort;
//  end
//  else
//  begin
//    if SomenteNumero(EdtCPFCNPJ.text).Length <> 14 then
//    begin
//      ShowMessage('CNPJ Invalido');
//      EdtCPFCNPJ.setfocus;
//    end
//    else
//
//    begin
//
//      datamodule1.RESTRequestCNPJ.Resource := SomenteNumero(EdtCPFCNPJ.text);
//      datamodule1.RESTRequestCNPJ.Execute;
//      if datamodule1.RESTRequestCNPJ.Response.StatusCode <> 200 then
//
//      begin
//        ShowMessage('Não foi possivel consultar o CNPJ. Verifique sua conexão com internet!'
//          + datamodule1.RESTRequestCNPJ.Response.StatusCode.ToString)
//      end
//      else
//
//      begin
//        JSON := datamodule1.RESTRequestCNPJ.Response.JSONValue.ToString;
//        // ArrayDados := TjsonObject.ParseJsonValue(TEncoding.UTF8.GetBytes(json), 0) as TJsonArray;
//        JsValue := TJsonObject.ParseJsonValue(TEncoding.UTF8.GetBytes(JSON), 0);
//        EdtRazao.text := JsValue.GetValue<String>('nome', '');
//        EdtFantasia.text := JsValue.GetValue<String>('fantasia', '');
//        If EdtEndereco.text = '' then
//        begin
//          EdtEndereco.text := JsValue.GetValue<String>('logradouro', '');
//        end;
//
//        mmoObservacao.Lines.add('Capital Social: ' + JsValue.GetValue<String>('capital_social', ''));
//        mmoObservacao.Lines.add('ATIVIDADE PRINCIPAL');
//
//        arrayAtividadeP := JsValue.GetValue<TJSONArray>('atividade_principal');
//        for x := 0 to arrayAtividadeP.Size - 1 do
//        begin
//
//          mmoObservacao.Lines.add('Codigo: ' + arrayAtividadeP.Get(x).GetValue<String>('code', ''));
//          mmoObservacao.Lines.add('Descrição: ' + arrayAtividadeP.Get(x).GetValue<String>('text', ''));
//
//        end;
//
//        mmoObservacao.Lines.add('ATIVIDADES SECUNDARIA');
//        arrayAtividadeS := JsValue.GetValue<TJSONArray>
//          ('atividades_secundarias');
//        for y := 0 to arrayAtividadeS.Size - 1 do
//        begin
//
//          mmoObservacao.Lines.add('Codigo: ' + arrayAtividadeS.Get(y).GetValue<String>('code', ''));
//          mmoObservacao.Lines.add('Descrição: ' + arrayAtividadeS.Get(y).GetValue<String>('text', ''));
//
//        end;
//
//        mmoObservacao.Lines.add('Abertura: ' + JsValue.GetValue<String>('abertura', ''));
//        mmoObservacao.Lines.add('Natureza Juridica: ' + JsValue.GetValue<String>('natureza_juridica', ''));
//        mmoObservacao.Lines.add('Situação: ' + JsValue.GetValue<String>('situacao', ''));
//
//        EdtNumero.text := JsValue.GetValue<String>('numero', '');
//        EdtBairro.text := JsValue.GetValue<String>('bairro', '');
////        EdtEmail.text := JsValue.GetValue<String>('email', '');
////        EdtTelefone.text := JsValue.GetValue<String>('telefone', '');
//        EdtCep.text := JsValue.GetValue<String>('cep', '');
//        EdtBairro.text := JsValue.GetValue<String>('fantasia', '');
//        If EdtComplemento.text = '' then
//        begin
//          EdtComplemento.text := JsValue.GetValue<String>('complemento', '');
//        end;
//
//        EdtUF.text := JsValue.GetValue<String>('uf', '');
//
////        CarregaCep;
//
//      end;
//
//    end;
//
//  end;

end;

procedure TViewCadastroClientes.GET_TipoCliente;
begin // carrega o grupo de pessoas

  FService.QRY_Pessoas_Grupos.Close;
  FService.QRY_Pessoas_Grupos.Open();

  if FService.QRY_Pessoas_Grupos.RecordCount > 0 then
  begin
    cbxGrupoCliente.Items.Clear;
    FService.QRY_Pessoas_Grupos.DisableControls;
    FService.QRY_Pessoas_Grupos.First;
    while not FService.QRY_Pessoas_Grupos.Eof do
    begin
      cbxGrupoCliente.Items.AddObject(FService.QRY_Pessoas_GruposTIPOGRUPO.AsString, TObject(FService.QRY_Pessoas_GruposIDGRUPOCLIENTES.AsInteger));
      FService.QRY_Pessoas_Grupos.Next;
    end;
    FService.QRY_Pessoas_Grupos.EnableControls;
  end;

end;

procedure TViewCadastroClientes.PintarOutrosBotoesEPaineis(BotaoSelecionado: TSpeedButton; PainelSelecionado: TPanel);
var
  i: Integer;
  Painel: TPanel;
  Botao: TSpeedButton;
begin

  for i := 0 to pnlAbas.ControlCount - 1 do
  begin
    if pnlAbas.Controls[i] is TPanel then
    begin
      Painel := TPanel(pnlAbas.Controls[i]);
      if Painel <> PainelSelecionado then
        Painel.Color := $00D4D4D4;

      if Painel.Controls[0] is TSpeedButton then
      begin
        Botao := TSpeedButton(Painel.Controls[0]);
        if Botao <> BotaoSelecionado then
          Botao.Font.Color := $003A3A3A;
      end;
    end;
  end;

end;

procedure TViewCadastroClientes.FormCreate(Sender: TObject);
begin// create
  inherited;
  DS_Cadastro.DataSet := FService.QRY_Pessoas;
  DS_Endereco.DataSet := FService.QRY_Pessoas_Endereco;
  DS_Contatos.DataSet := FService.QRY_Pessoas_Contato;
end;

procedure TViewCadastroClientes.FormShow(Sender: TObject);
begin // show
  inherited;

  GET_TipoCliente;

  if Operacao = AcaoDataSetToStr(tpIncluir) then
  begin
    FService.QRY_Pessoas.Open();
    FService.QRY_Pessoas.Insert;
    FService.QRY_PessoasATIVO.AsString         := 'ATIVO';
    FService.QRY_PessoasIDTIPOPESSOA.AsInteger := 1;
  end;

  if Operacao = AcaoDataSetToStr(tpEditar) then
  begin
    FService.GET_Pessoas(IdPesquisa);
    FService.GET_Endereco(IdPesquisa);
    FService.GET_Contato(IdPesquisa);
    FService.QRY_Pessoas.Edit;
    FService.GET_Cidades(FService.QRY_PessoasIDCIDADE.AsInteger);
  end;

  CP_Clientes.ActiveCard := Card_Enderecos;

end;


end.

